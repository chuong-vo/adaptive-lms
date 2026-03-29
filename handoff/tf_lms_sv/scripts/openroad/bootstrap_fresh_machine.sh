#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Usage:
  ./setup_tools.sh [options]

Run this script from inside a cloned OpenROAD-flow-scripts repo.

What it does:
  1. Runs ORFS dependency setup (`setup.sh`) if requested.
  2. Builds OpenROAD/Yosys locally using ORFS (`build_openroad.sh --local`).
  3. Installs tf_lms_sv collateral (`configure_flow.sh`).
  4. Optionally reruns the full flow (`flow.sh rerun`).

Options:
  --deps          Run `sudo ./setup.sh`.
  --build         Run `./build_openroad.sh --local`.
  --rerun         Run `flow.sh rerun` after setup/build.
  --threads N     Parallel jobs for dependency setup, submodule update, and build.
  --threads auto  Auto-detect jobs from CPU count (default).
  --check-only    Only validate repo layout and print next steps.
  --all           Equivalent to `--deps --build --rerun`.
  -h, --help      Show help.

Examples:
  ./setup_tools.sh --all
  ./setup_tools.sh --deps --build
  ./setup_tools.sh --build --threads 8 --rerun
EOF
}

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/../../../.." && pwd)"
SETUP_ENV="$SCRIPT_DIR/setup_env.sh"
RUN_FLOW="$SCRIPT_DIR/run_flow.sh"
CONFIGURE_FLOW_ALIAS="$SCRIPT_DIR/configure_flow.sh"
FLOW_ALIAS="$SCRIPT_DIR/flow.sh"
SETUP_TOOLS_ALIAS="$SCRIPT_DIR/setup_tools.sh"

DO_DEPS=0
DO_BUILD=0
DO_RERUN=0
CHECK_ONLY=0
THREADS=""

detect_cpu_threads() {
  if command -v nproc >/dev/null 2>&1; then
    nproc
    return 0
  fi
  if command -v getconf >/dev/null 2>&1; then
    getconf _NPROCESSORS_ONLN
    return 0
  fi
  if command -v sysctl >/dev/null 2>&1; then
    sysctl -n hw.ncpu
    return 0
  fi
  echo 1
}

KLAYOUT_MIN_VERSION="0.30.3"

version_ge() {
  local lhs="$1"
  local rhs="$2"
  [[ "$(printf '%s\n%s\n' "$rhs" "$lhs" | sort -V | tail -n1)" == "$lhs" ]]
}

extract_semver() {
  printf '%s\n' "$1" | sed -n 's/.*\([0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\).*/\1/p' | head -n1
}

append_gap() {
  local -n target_ref="$1"
  target_ref+=("$2")
}

path_exists_any() {
  local path
  for path in "$@"; do
    [[ -e "$path" ]] && return 0
  done
  return 1
}

python_module_ok() {
  local module="$1"
  python3 - "$module" >/dev/null 2>&1 <<'PY'
import importlib
import sys

importlib.import_module(sys.argv[1])
PY
}

collect_base_dependency_gaps() {
  local -n gaps_ref="$1"
  local cmd
  for cmd in git make cmake gcc g++ bison flex swig pkg-config python3 pip3 curl; do
    if ! command -v "$cmd" >/dev/null 2>&1; then
      append_gap gaps_ref "$cmd"
    fi
  done

  if ! command -v klayout >/dev/null 2>&1; then
    append_gap gaps_ref "klayout>=${KLAYOUT_MIN_VERSION}"
    return
  fi

  local version
  version="$(extract_semver "$(klayout -v 2>/dev/null || true)")"
  if [[ -z "$version" ]] || ! version_ge "$version" "$KLAYOUT_MIN_VERSION"; then
    append_gap gaps_ref "klayout>=${KLAYOUT_MIN_VERSION}"
  fi
}

collect_common_dependency_gaps() {
  local -n gaps_ref="$1"
  local module

  if [[ ! -f "$REPO_ROOT/dependencies/env.sh" ]]; then
    append_gap gaps_ref "dependencies/env.sh"
  fi

  if [[ ! -f "$REPO_ROOT/tools/OpenROAD/etc/openroad_deps_prefixes.txt" ]]; then
    append_gap gaps_ref "tools/OpenROAD/etc/openroad_deps_prefixes.txt"
  fi

  if ! pkg-config --exists libpcre2-8 2>/dev/null && ! path_exists_any \
    "$REPO_ROOT/dependencies/include/pcre2.h" \
    /usr/include/pcre2.h \
    /usr/include/x86_64-linux-gnu/pcre2.h; then
    append_gap gaps_ref "pcre2"
  fi

  if ! pkg-config --exists yaml-cpp 2>/dev/null && ! path_exists_any \
    "$REPO_ROOT/dependencies/include/yaml-cpp/yaml.h" \
    /usr/include/yaml-cpp/yaml.h; then
    append_gap gaps_ref "yaml-cpp"
  fi

  if ! pkg-config --exists spdlog 2>/dev/null && ! path_exists_any \
    "$REPO_ROOT/dependencies/include/spdlog/spdlog.h" \
    /usr/include/spdlog/spdlog.h; then
    append_gap gaps_ref "spdlog"
  fi

  if ! path_exists_any "$REPO_ROOT/dependencies/include/boost/version.hpp" /usr/include/boost/version.hpp; then
    append_gap gaps_ref "boost"
  fi

  if ! path_exists_any "$REPO_ROOT/dependencies/include/eigen3/Eigen/Core" /usr/include/eigen3/Eigen/Core; then
    append_gap gaps_ref "eigen3"
  fi

  if ! path_exists_any "$REPO_ROOT/dependencies/include/gtest/gtest.h" /usr/include/gtest/gtest.h; then
    append_gap gaps_ref "gtest"
  fi

  if ! path_exists_any "$REPO_ROOT/dependencies/include/lemon/list_graph.h" /usr/include/lemon/list_graph.h; then
    append_gap gaps_ref "lemon"
  fi

  if ! path_exists_any "$REPO_ROOT/dependencies/include/cudd.h" /usr/include/cudd.h; then
    append_gap gaps_ref "cudd"
  fi

  if ! path_exists_any \
    "$REPO_ROOT/dependencies/lib/cmake/ortools/ortoolsConfig.cmake" \
    "$REPO_ROOT/dependencies/lib64/cmake/ortools/ortoolsConfig.cmake" \
    /opt/or-tools/lib/cmake/ortools/ortoolsConfig.cmake \
    /opt/or-tools/lib64/cmake/ortools/ortoolsConfig.cmake; then
    append_gap gaps_ref "or-tools"
  fi

  for module in pandas numpy firebase_admin click yamlfix yaml; do
    if ! python_module_ok "$module"; then
      append_gap gaps_ref "python:${module}"
    fi
  done
}

validate_local_openroad() {
  local bin="$REPO_ROOT/tools/install/OpenROAD/bin/openroad"
  [[ -x "$bin" ]] && "$bin" -version >/dev/null 2>&1
}

validate_local_yosys() {
  local bin="$REPO_ROOT/tools/install/yosys/bin/yosys"
  [[ -x "$bin" ]] && "$bin" -V >/dev/null 2>&1
}

validate_local_yosys_slang() {
  local yosys_bin="$REPO_ROOT/tools/install/yosys/bin/yosys"
  local plugin="$REPO_ROOT/tools/install/yosys/share/yosys/plugins/slang.so"
  [[ -x "$yosys_bin" && -f "$plugin" ]] || return 1
  "$yosys_bin" -m slang -p 'help read_slang' >/dev/null 2>&1
}

validate_local_kepler() {
  local bin="$REPO_ROOT/tools/install/kepler-formal/bin/kepler-formal"
  [[ -x "$bin" ]] && "$bin" --help >/dev/null 2>&1
}

collect_build_gaps() {
  local -n gaps_ref="$1"
  validate_local_openroad || append_gap gaps_ref "OpenROAD local install"
  validate_local_yosys || append_gap gaps_ref "Yosys local install"
  validate_local_yosys_slang || append_gap gaps_ref "yosys-slang local install"
  validate_local_kepler || append_gap gaps_ref "kepler-formal local install"
}

print_gap_report() {
  local header="$1"
  shift
  local gaps=("$@")
  if ((${#gaps[@]} == 0)); then
    echo "$header: ready"
    return 0
  fi

  echo "$header: missing"
  printf '  - %s\n' "${gaps[@]}"
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --deps)
      DO_DEPS=1
      shift
      ;;
    --build)
      DO_BUILD=1
      shift
      ;;
    --rerun)
      DO_RERUN=1
      shift
      ;;
    --threads)
      THREADS="${2:?missing value for --threads}"
      shift 2
      ;;
    --check-only)
      CHECK_ONLY=1
      shift
      ;;
    --all)
      DO_DEPS=1
      DO_BUILD=1
      DO_RERUN=1
      shift
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Unknown option: $1" >&2
      usage >&2
      exit 1
      ;;
  esac
done

if [[ -z "$THREADS" || "$THREADS" == "auto" || "$THREADS" == "nproc" ]]; then
  THREADS="$(detect_cpu_threads)"
fi

if [[ ! "$THREADS" =~ ^[1-9][0-9]*$ ]]; then
  echo "Invalid --threads value: $THREADS (must be a positive integer or 'auto')" >&2
  exit 1
fi

assert_file() {
  local path="$1"
  [[ -e "$path" ]] || { echo "Missing file: $path" >&2; exit 1; }
}

assert_git_repo() {
  git -C "$REPO_ROOT" rev-parse --is-inside-work-tree >/dev/null 2>&1 || {
    echo "Not a git repository: $REPO_ROOT" >&2
    exit 1
  }
}

assert_repo() {
  assert_file "$REPO_ROOT/setup.sh"
  assert_file "$REPO_ROOT/build_openroad.sh"
  assert_file "$REPO_ROOT/flow/Makefile"
  assert_file "$SETUP_ENV"
  assert_file "$RUN_FLOW"
  assert_git_repo
}

show_plan() {
  cat <<EOF
Repo root : $REPO_ROOT
Configure : $CONFIGURE_FLOW_ALIAS
Flow      : $FLOW_ALIAS
Deps      : $DO_DEPS
Build     : $DO_BUILD
Rerun     : $DO_RERUN
Threads   : ${THREADS:-default}
EOF
}

submodules_need_init() {
  local status
  status="$(git -C "$REPO_ROOT" submodule status --recursive || true)"
  [[ -z "$status" ]] && return 1
  echo "$status" | grep -Eq '^[+-U]'
}

ensure_submodules() {
  if [[ ! -f "$REPO_ROOT/.gitmodules" ]]; then
    return 0
  fi
  echo "[prep] Syncing and initializing git submodules"
  local submodule_args=(--init --recursive)
  if [[ -n "$THREADS" ]]; then
    submodule_args+=(--jobs "$THREADS")
  fi
  (
    cd "$REPO_ROOT"
    git submodule sync --recursive
    git submodule update "${submodule_args[@]}"
  )
}

assert_tool_sources() {
  local missing=0
  for required_path in \
    "$REPO_ROOT/tools/OpenROAD/etc/DependencyInstaller.sh" \
    "$REPO_ROOT/tools/OpenROAD/etc/Build.sh" \
    "$REPO_ROOT/tools/yosys/Makefile" \
    "$REPO_ROOT/tools/yosys-slang/Makefile"; do
    if [[ ! -e "$required_path" ]]; then
      echo "Missing required dependency source: $required_path" >&2
      missing=1
    fi
  done
  if [[ "$missing" -ne 0 ]]; then
    echo "Fix: git submodule update --init --recursive" >&2
    exit 1
  fi
}

verify_flow_setup() {
  echo "[verify] Validating resolved toolchain and design files"
  (cd "$REPO_ROOT" && "$RUN_FLOW" check)
}

run_deps() {
  local dep_gaps=()
  collect_base_dependency_gaps dep_gaps
  collect_common_dependency_gaps dep_gaps
  if ((${#dep_gaps[@]} == 0)); then
    echo "[1/4] Dependency preflight already passes. Skipping setup.sh"
    return 0
  fi

  echo "[1/4] Running ORFS dependency installer with sudo"
  print_gap_report "[deps] Setup prerequisites before install" "${dep_gaps[@]}"
  command -v sudo >/dev/null 2>&1 || {
    echo "Missing required command: sudo" >&2
    exit 1
  }
  ensure_submodules
  assert_tool_sources
  local setup_args=()
  if [[ -n "$THREADS" ]]; then
    setup_args+=(--threads "$THREADS")
  fi
  (cd "$REPO_ROOT" && sudo ./setup.sh "${setup_args[@]}")

  dep_gaps=()
  collect_base_dependency_gaps dep_gaps
  collect_common_dependency_gaps dep_gaps
  if ((${#dep_gaps[@]} != 0)); then
    print_gap_report "[deps] Remaining issues after setup" "${dep_gaps[@]}"
    exit 1
  fi
}

run_build() {
  local build_gaps=()
  collect_build_gaps build_gaps
  if ((${#build_gaps[@]} == 0)); then
    echo "[2/4] Local toolchain already passes sanity checks. Skipping build_openroad.sh"
    return 0
  fi

  echo "[2/4] Building OpenROAD and Yosys locally"
  print_gap_report "[build] Missing or invalid local artifacts" "${build_gaps[@]}"
  ensure_submodules
  assert_tool_sources
  local args=(--local)
  if [[ -n "$THREADS" ]]; then
    args+=(--threads "$THREADS")
  fi
  (cd "$REPO_ROOT" && ./build_openroad.sh "${args[@]}")

  build_gaps=()
  collect_build_gaps build_gaps
  if ((${#build_gaps[@]} != 0)); then
    print_gap_report "[build] Remaining issues after build" "${build_gaps[@]}"
    exit 1
  fi
}

install_tf_lms_env() {
  echo "[3/4] Installing tf_lms_sv flow collateral"
  (cd "$REPO_ROOT" && "$SETUP_ENV")
}

rerun_flow() {
  echo "[4/4] Rerunning tf_lms_sv full flow"
  (cd "$REPO_ROOT" && "$RUN_FLOW" rerun)
}

assert_repo
show_plan

if [[ "$CHECK_ONLY" -eq 1 ]]; then
  dep_gaps=()
  build_gaps=()
  if submodules_need_init; then
    echo "Warning: some recursive submodules are not initialized or out of sync." >&2
    echo "They will be initialized automatically during --deps/--build." >&2
  fi
  assert_tool_sources
  collect_base_dependency_gaps dep_gaps
  collect_common_dependency_gaps dep_gaps
  collect_build_gaps build_gaps
  print_gap_report "Dependency status" "${dep_gaps[@]}"
  print_gap_report "Local build status" "${build_gaps[@]}"
  if ! (cd "$REPO_ROOT" && "$SETUP_ENV" --check); then
    echo "setup_env --check failed." >&2
    if ((${#build_gaps[@]} != 0)); then
      echo "Local tools are not ready yet; run --build or --all." >&2
    fi
    if ((${#dep_gaps[@]} != 0)); then
      echo "Some setup dependencies are still missing; run --deps or --all." >&2
    fi
    echo "Ensure OpenROAD, Yosys, and KLayout resolve either from PATH or from tools/install." >&2
    exit 1
  fi
  echo "Bootstrap preflight complete."
  echo "Typical command:"
  echo "  $SETUP_TOOLS_ALIAS --all"
  exit 0
fi

if [[ "$DO_DEPS" -eq 0 && "$DO_BUILD" -eq 0 && "$DO_RERUN" -eq 0 ]]; then
  echo "Nothing selected. Use --all or choose --deps/--build/--rerun." >&2
  exit 1
fi

if [[ "$DO_DEPS" -eq 1 ]]; then
  run_deps
fi

if [[ "$DO_BUILD" -eq 1 ]]; then
  run_build
fi

install_tf_lms_env

if [[ "$DO_BUILD" -eq 1 || "$DO_RERUN" -eq 1 ]]; then
  verify_flow_setup
fi

if [[ "$DO_RERUN" -eq 1 ]]; then
  rerun_flow
fi

echo "Done."
echo "Next useful commands:"
echo "  cd $REPO_ROOT"
echo "  $FLOW_ALIAS check"
echo "  $FLOW_ALIAS rerun"
