#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Usage:
  ./bootstrap_fresh_machine.sh [options]

Run this script from inside a cloned OpenROAD-flow-scripts repo.

What it does:
  1. Runs ORFS dependency setup (`setup.sh`) if requested.
  2. Builds OpenROAD/Yosys locally using ORFS (`build_openroad.sh --local`).
  3. Installs tf_lms_sv collateral (`setup_env.sh`).
  4. Optionally reruns the full flow (`run_flow.sh rerun`).

Options:
  --deps          Run `sudo ./setup.sh`.
  --build         Run `./build_openroad.sh --local`.
  --rerun         Run `run_flow.sh rerun` after setup/build.
  --threads N     Parallel jobs for dependency setup, submodule update, and build.
  --threads auto  Auto-detect jobs from CPU count (default).
  --check-only    Only validate repo layout and print next steps.
  --all           Equivalent to `--deps --build --rerun`.
  -h, --help      Show help.

Examples:
  ./bootstrap_fresh_machine.sh --all
  ./bootstrap_fresh_machine.sh --deps --build
  ./bootstrap_fresh_machine.sh --build --threads 8 --rerun
EOF
}

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/../../../.." && pwd)"
SETUP_ENV="$SCRIPT_DIR/setup_env.sh"
RUN_FLOW="$SCRIPT_DIR/run_flow.sh"

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
Setup env : $SETUP_ENV
Run flow  : $RUN_FLOW
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
  echo "[1/4] Running ORFS dependency installer with sudo"
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
}

run_build() {
  echo "[2/4] Building OpenROAD and Yosys locally"
  ensure_submodules
  assert_tool_sources
  local args=(--local)
  if [[ -n "$THREADS" ]]; then
    args+=(--threads "$THREADS")
  fi
  (cd "$REPO_ROOT" && ./build_openroad.sh "${args[@]}")
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
  if submodules_need_init; then
    echo "Warning: some recursive submodules are not initialized or out of sync." >&2
    echo "They will be initialized automatically during --deps/--build." >&2
  fi
  assert_tool_sources
  if ! (cd "$REPO_ROOT" && "$SETUP_ENV" --check); then
    echo "setup_env --check failed. Ensure OpenROAD/Yosys/KLayout are installed." >&2
    exit 1
  fi
  echo "Check complete."
  echo "Typical command:"
  echo "  $SCRIPT_DIR/bootstrap_fresh_machine.sh --all"
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
echo "  $RUN_FLOW check"
echo "  $RUN_FLOW rerun"
