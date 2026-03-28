#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Usage:
  ./run_flow.sh check
  ./run_flow.sh clean
  ./run_flow.sh synth|floorplan|place|cts|route|finish
  ./run_flow.sh all
  ./run_flow.sh lvs
  ./run_flow.sh drc
  ./run_flow.sh signoff
  ./run_flow.sh rerun
  ./run_flow.sh show-env

Commands:
  check     Validate tool paths and required files.
  clean     Remove logs/results/reports/objects for tf_lms_sv only.
  all       Run synthesis through finish.
  signoff   Run LVS then DRC.
  rerun     Clean, run all, then run signoff.
EOF
}

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ENV_FILE="$SCRIPT_DIR/env.sh"

if [[ ! -f "$ENV_FILE" ]]; then
  echo "Missing $ENV_FILE" >&2
  echo "Run: $SCRIPT_DIR/setup_env.sh" >&2
  exit 1
fi

# shellcheck disable=SC1090
source "$ENV_FILE"

assert_file() {
  local path="$1"
  [[ -e "$path" ]] || { echo "Missing file: $path" >&2; exit 1; }
}

assert_exe() {
  local path="$1"
  [[ -x "$path" ]] || { echo "Missing executable: $path" >&2; exit 1; }
}

make_cmd() {
  local args=(
    -C "$OPENROAD_FLOW_DIR"
    "DESIGN_CONFIG=$TF_LMS_DESIGN_CONFIG"
    "OPENROAD_EXE=$OPENROAD_EXE"
    "YOSYS_EXE=$YOSYS_EXE"
  )
  make "${args[@]}" "$@"
}

run_lvs() {
  make_cmd "KLAYOUT_LVS_FILE=$KLAYOUT_LVS_FILE" lvs
}

run_drc() {
  make_cmd "KLAYOUT_DRC_FILE=$KLAYOUT_DRC_FILE" drc
}

clean_design() {
  rm -rf \
    "$OPENROAD_FLOW_DIR/results/nangate45/tf_lms_sv/base" \
    "$OPENROAD_FLOW_DIR/reports/nangate45/tf_lms_sv/base" \
    "$OPENROAD_FLOW_DIR/logs/nangate45/tf_lms_sv/base" \
    "$OPENROAD_FLOW_DIR/objects/nangate45/tf_lms_sv/base"
}

show_env() {
  cat <<EOF
OPENROAD_FLOW_DIR=$OPENROAD_FLOW_DIR
TF_LMS_DESIGN_CONFIG=$TF_LMS_DESIGN_CONFIG
OPENROAD_EXE=$OPENROAD_EXE
YOSYS_EXE=$YOSYS_EXE
KLAYOUT_CMD=$KLAYOUT_CMD
KLAYOUT_LVS_FILE=$KLAYOUT_LVS_FILE
KLAYOUT_DRC_FILE=$KLAYOUT_DRC_FILE
EOF
}

check() {
  assert_file "$TF_LMS_DESIGN_CONFIG"
  assert_file "$KLAYOUT_LVS_FILE"
  assert_file "$KLAYOUT_DRC_FILE"
  assert_exe "$OPENROAD_EXE"
  assert_exe "$YOSYS_EXE"
  assert_exe "$KLAYOUT_CMD"
  assert_file "$OPENROAD_FLOW_DIR/scripts/global_place.tcl"
  assert_file "$OPENROAD_FLOW_DIR/scripts/util.tcl"

  show_env
  echo
  "$OPENROAD_EXE" -version || true
  "$YOSYS_EXE" -V || true
  "$KLAYOUT_CMD" -v || true
}

cmd="${1:-}"
case "$cmd" in
  check)
    check
    ;;
  show-env)
    show_env
    ;;
  clean)
    clean_design
    ;;
  synth|floorplan|place|cts|route|finish|all)
    export KLAYOUT_CMD
    make_cmd "$cmd"
    ;;
  lvs)
    export KLAYOUT_CMD
    run_lvs
    ;;
  drc)
    export KLAYOUT_CMD
    run_drc
    ;;
  signoff)
    export KLAYOUT_CMD
    run_lvs
    run_drc
    ;;
  rerun)
    export KLAYOUT_CMD
    clean_design
    make_cmd all
    run_lvs
    run_drc
    ;;
  -h|--help|help|"")
    usage
    ;;
  *)
    echo "Unknown command: $cmd" >&2
    usage >&2
    exit 1
    ;;
esac
