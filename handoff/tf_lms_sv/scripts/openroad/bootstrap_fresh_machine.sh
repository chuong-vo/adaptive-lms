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
  --threads N     Pass `--threads N` to `build_openroad.sh`.
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

assert_file() {
  local path="$1"
  [[ -e "$path" ]] || { echo "Missing file: $path" >&2; exit 1; }
}

assert_repo() {
  assert_file "$REPO_ROOT/setup.sh"
  assert_file "$REPO_ROOT/build_openroad.sh"
  assert_file "$REPO_ROOT/flow/Makefile"
  assert_file "$SETUP_ENV"
  assert_file "$RUN_FLOW"
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

run_deps() {
  echo "[1/4] Running ORFS dependency installer with sudo"
  (cd "$REPO_ROOT" && sudo ./setup.sh)
}

run_build() {
  echo "[2/4] Building OpenROAD and Yosys locally"
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

if [[ "$DO_RERUN" -eq 1 ]]; then
  rerun_flow
fi

echo "Done."
echo "Next useful commands:"
echo "  cd $REPO_ROOT"
echo "  $RUN_FLOW check"
echo "  $RUN_FLOW rerun"
