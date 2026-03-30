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
  3. Stops after tool setup. Run `configure_flow.sh` separately to configure the flow.

Options:
  --deps          Run `sudo ./setup.sh`.
  --build         Run `./build_openroad.sh --local`.
  --threads N     Parallel jobs for dependency setup, submodule update, and build.
  --threads auto  Auto-detect jobs from CPU count (default).
  --check-only    Only validate repo layout and print next steps.
  --all           Equivalent to `--deps --build`.
  -h, --help      Show help.

Examples:
  ./setup_tools.sh --all
  ./setup_tools.sh --deps --build
  ./setup_tools.sh --build --threads 8
EOF
}

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/../../../.." && pwd)"
DEPENDENCY_BIN_DIR="$REPO_ROOT/dependencies/bin"
CONFIGURE_FLOW_ALIAS="$SCRIPT_DIR/configure_flow.sh"
FLOW_ALIAS="$SCRIPT_DIR/flow.sh"
SETUP_TOOLS_ALIAS="$SCRIPT_DIR/setup_tools.sh"

DO_DEPS=0
DO_BUILD=0
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

resolve_command_path() {
  local cmd="$1"
  if [[ -x "$DEPENDENCY_BIN_DIR/$cmd" ]]; then
    printf '%s\n' "$DEPENDENCY_BIN_DIR/$cmd"
    return 0
  fi
  command -v "$cmd" 2>/dev/null || return 1
}

command_available() {
  resolve_command_path "$1" >/dev/null 2>&1
}

warn_if_windows_mount() {
  case "$REPO_ROOT" in
    /mnt/[A-Za-z]/*)
      cat >&2 <<EOF
Warning: repo is under a Windows-mounted filesystem: $REPO_ROOT
Builds on /mnt/<drive> under WSL are slower and more failure-prone.
Prefer moving the repo under the Linux filesystem, for example ~/adaptive-lms.
EOF
      ;;
  esac
}

print_ubuntu_hint() {
  cat >&2 <<'EOF'
Ubuntu fallback for common prerequisites:
  sudo apt-get update
  sudo apt-get install -y git ca-certificates make gcc g++ bison flex cmake swig pkg-config python3 python3-pip curl
EOF
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
    if ! command_available "$cmd"; then
      append_gap gaps_ref "$cmd"
    fi
  done

  local klayout_bin
  klayout_bin="$(resolve_command_path klayout || true)"
  if [[ -z "$klayout_bin" ]]; then
    append_gap gaps_ref "klayout>=${KLAYOUT_MIN_VERSION}"
    return
  fi

  local version
  version="$(extract_semver "$("$klayout_bin" -v 2>/dev/null || true)")"
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
  local tmpdir test_sv
  [[ -x "$bin" ]] || return 1
  "$bin" -V >/dev/null 2>&1 || return 1

  tmpdir="$(mktemp -d)"
  test_sv="${tmpdir}/yosys_smoke.sv"
  cat > "$test_sv" <<'EOF'
module yosys_smoke(input logic a, input logic b, output logic y);
  assign y = a & b;
endmodule
EOF

  if ! "$bin" -Q -p "read_verilog -sv ${test_sv}; hierarchy -top yosys_smoke; proc; opt; stat" >/dev/null 2>&1; then
    rm -rf "$tmpdir"
    return 1
  fi

  rm -rf "$tmpdir"
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
  validate_local_kepler || append_gap gaps_ref "kepler-formal local install"
}

collect_optional_build_gaps() {
  local -n gaps_ref="$1"
  validate_local_yosys_slang || append_gap gaps_ref "yosys-slang local install (optional for tf_lms_sv)"
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
      echo "setup_tools.sh only sets up the environment." >&2
      echo "Run the flow separately with: $FLOW_ALIAS rerun" >&2
      exit 1
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
  assert_file "$CONFIGURE_FLOW_ALIAS"
  assert_file "$FLOW_ALIAS"
  assert_git_repo
}

show_plan() {
  cat <<EOF
Repo root : $REPO_ROOT
Configure : $CONFIGURE_FLOW_ALIAS
Flow      : $FLOW_ALIAS
Deps      : $DO_DEPS
Build     : $DO_BUILD
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

run_deps() {
  local base_gaps=()
  local common_gaps=()
  collect_base_dependency_gaps base_gaps
  collect_common_dependency_gaps common_gaps
  if ((${#base_gaps[@]} == 0 && ${#common_gaps[@]} == 0)); then
    echo "[1/4] Dependency preflight already passes. Skipping setup.sh"
    return 0
  fi

  echo "[1/4] Running ORFS dependency installer with sudo"
  print_gap_report "[deps] System prerequisites before install" "${base_gaps[@]}"
  print_gap_report "[deps] Common dependency status before install" "${common_gaps[@]}"
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

  base_gaps=()
  common_gaps=()
  collect_base_dependency_gaps base_gaps
  collect_common_dependency_gaps common_gaps
  if ((${#base_gaps[@]} != 0 || ${#common_gaps[@]} != 0)); then
    print_gap_report "[deps] Remaining system prerequisite issues after setup" "${base_gaps[@]}"
    print_gap_report "[deps] Remaining common dependency issues after setup" "${common_gaps[@]}"
    print_ubuntu_hint
    if [[ "$DO_BUILD" -eq 1 ]]; then
      echo "[deps] Build was not started because dependency preflight still fails." >&2
      echo "[deps] Fix the remaining gaps above, then rerun: $SETUP_TOOLS_ALIAS --build --threads $THREADS" >&2
    fi
    exit 1
  fi
}

run_build() {
  local build_gaps=()
  local optional_gaps=()
  collect_build_gaps build_gaps
  if ((${#build_gaps[@]} == 0)); then
    echo "[2/4] Local toolchain already passes sanity checks. Skipping build_openroad.sh"
    collect_optional_build_gaps optional_gaps
    if ((${#optional_gaps[@]} != 0)); then
      print_gap_report "[build] Optional components not available" "${optional_gaps[@]}"
    fi
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
  optional_gaps=()
  collect_build_gaps build_gaps
  collect_optional_build_gaps optional_gaps
  if ((${#build_gaps[@]} != 0)); then
    print_gap_report "[build] Remaining issues after build" "${build_gaps[@]}"
    exit 1
  fi
  if ((${#optional_gaps[@]} != 0)); then
    print_gap_report "[build] Optional components not available" "${optional_gaps[@]}"
  fi
}

assert_repo
show_plan
warn_if_windows_mount

if [[ "$CHECK_ONLY" -eq 1 ]]; then
  base_gaps=()
  common_gaps=()
  build_gaps=()
  optional_gaps=()
  if submodules_need_init; then
    echo "Warning: some recursive submodules are not initialized or out of sync." >&2
    echo "They will be initialized automatically during --deps/--build." >&2
  fi
  assert_tool_sources
  collect_base_dependency_gaps base_gaps
  collect_common_dependency_gaps common_gaps
  collect_build_gaps build_gaps
  collect_optional_build_gaps optional_gaps
  print_gap_report "System prerequisite status" "${base_gaps[@]}"
  print_gap_report "Common dependency status" "${common_gaps[@]}"
  print_gap_report "Local build status" "${build_gaps[@]}"
  if ((${#optional_gaps[@]} != 0)); then
    print_gap_report "Optional tool status" "${optional_gaps[@]}"
  fi
  if ((${#base_gaps[@]} != 0)); then
    print_ubuntu_hint
  fi
  echo "Setup preflight complete."
  echo "Typical command:"
  echo "  $SETUP_TOOLS_ALIAS --all"
  exit 0
fi

if [[ "$DO_DEPS" -eq 0 && "$DO_BUILD" -eq 0 ]]; then
  echo "Nothing selected. Use --all or choose --deps/--build." >&2
  exit 1
fi

if [[ "$DO_DEPS" -eq 1 ]]; then
  run_deps
fi

if [[ "$DO_BUILD" -eq 1 ]]; then
  run_build
fi

echo "Done."
echo "Next useful commands:"
echo "  cd $REPO_ROOT"
echo "  $CONFIGURE_FLOW_ALIAS"
echo "  $FLOW_ALIAS check"
echo "  $FLOW_ALIAS all -j ${THREADS}"
echo "  $FLOW_ALIAS rerun"
