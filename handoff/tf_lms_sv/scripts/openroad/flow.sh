#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Usage:
  ./flow.sh check
  ./flow.sh clean
  ./flow.sh synth|floorplan|place|cts|route|finish [make-args...]
  ./flow.sh all [make-args...]
  ./flow.sh lvs
  ./flow.sh drc
  ./flow.sh signoff
  ./flow.sh rerun [make-args...]
  ./flow.sh show-env

Commands:
  check     Validate tool paths and required files.
  clean     Remove logs/results/reports/objects for tf_lms_sv only.
  all       Run synthesis through finish with per-stage status.
  signoff   Run LVS then DRC with per-stage status.
  rerun     Clean, run all, then run signoff.
EOF
}

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ENV_FILE="$SCRIPT_DIR/env.sh"

if [[ ! -f "$ENV_FILE" ]]; then
  echo "Missing $ENV_FILE" >&2
  echo "Run: $SCRIPT_DIR/configure_flow.sh" >&2
  exit 1
fi

# shellcheck disable=SC1090
source "$ENV_FILE"

RESULTS_DIR="$OPENROAD_FLOW_DIR/results/nangate45/tf_lms_sv/base"
REPORTS_DIR="$OPENROAD_FLOW_DIR/reports/nangate45/tf_lms_sv/base"
LOGS_DIR="$OPENROAD_FLOW_DIR/logs/nangate45/tf_lms_sv/base"
OBJECTS_DIR="$OPENROAD_FLOW_DIR/objects/nangate45/tf_lms_sv/base"

TOTAL_STAGES=0
PASSED_STAGES=0

stage_label() {
  case "$1" in
    check) echo "Environment" ;;
    clean) echo "Clean" ;;
    synth) echo "Synthesis" ;;
    floorplan) echo "Floorplan" ;;
    place) echo "Placement" ;;
    cts) echo "Clock tree" ;;
    route) echo "Routing" ;;
    finish) echo "Final export" ;;
    lvs) echo "LVS" ;;
    drc) echo "DRC" ;;
    *) echo "$1" ;;
  esac
}

assert_file() {
  local path="$1"
  [[ -e "$path" ]] || { echo "Missing file: $path" >&2; exit 1; }
}

assert_exe() {
  local path="$1"
  [[ -x "$path" ]] || { echo "Missing executable: $path" >&2; exit 1; }
}

basename_list() {
  local path
  local names=()
  for path in "$@"; do
    [[ -n "$path" ]] || continue
    names+=("$(basename "$path")")
  done
  printf '%s ' "${names[@]}"
}

trim_trailing_space() {
  sed 's/[[:space:]]\+$//'
}

pass_line() {
  local stage="$1"
  shift
  local msg="$*"
  printf '[OK]   %-12s %s\n' "$(stage_label "$stage")" "$msg"
}

fail_line() {
  local stage="$1"
  shift
  local msg="$*"
  printf '[FAIL] %-12s %s\n' "$(stage_label "$stage")" "$msg" >&2
}

summary_ok() {
  echo "Done: ${PASSED_STAGES}/${TOTAL_STAGES} steps passed"
}

summary_fail() {
  local stage="$1"
  echo "Stopped at: $(stage_label "$stage") (${PASSED_STAGES}/${TOTAL_STAGES} steps passed)" >&2
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

make_cmd() {
  local args=(
    -C "$OPENROAD_FLOW_DIR"
    "DESIGN_CONFIG=$TF_LMS_DESIGN_CONFIG"
    "OPENROAD_EXE=$OPENROAD_EXE"
    "YOSYS_EXE=$YOSYS_EXE"
  )
  make "${args[@]}" "$@"
}

run_lvs_make() {
  make_cmd "KLAYOUT_LVS_FILE=$KLAYOUT_LVS_FILE" lvs
}

run_drc_make() {
  make_cmd "KLAYOUT_DRC_FILE=$KLAYOUT_DRC_FILE" drc
}

clean_design() {
  rm -rf "$RESULTS_DIR" "$REPORTS_DIR" "$LOGS_DIR" "$OBJECTS_DIR"
}

check_setup() {
  assert_file "$TF_LMS_DESIGN_CONFIG"
  assert_file "$KLAYOUT_LVS_FILE"
  assert_file "$KLAYOUT_DRC_FILE"
  assert_exe "$OPENROAD_EXE"
  assert_exe "$YOSYS_EXE"
  assert_exe "$KLAYOUT_CMD"
  assert_file "$OPENROAD_FLOW_DIR/scripts/global_place.tcl"
  assert_file "$OPENROAD_FLOW_DIR/scripts/util.tcl"
}

latest_log_for_stage() {
  local stage="$1"
  local candidate=""
  case "$stage" in
    synth) candidate="$(find "$LOGS_DIR" -maxdepth 1 -type f -name '1*.log' 2>/dev/null | sort | tail -n1)" ;;
    floorplan) candidate="$(find "$LOGS_DIR" -maxdepth 1 -type f -name '2*.log' 2>/dev/null | sort | tail -n1)" ;;
    place) candidate="$(find "$LOGS_DIR" -maxdepth 1 -type f -name '3*.log' 2>/dev/null | sort | tail -n1)" ;;
    cts) candidate="$(find "$LOGS_DIR" -maxdepth 1 -type f -name '4*.log' 2>/dev/null | sort | tail -n1)" ;;
    route) candidate="$(find "$LOGS_DIR" -maxdepth 1 -type f -name '5*.log' 2>/dev/null | sort | tail -n1)" ;;
    finish) candidate="$LOGS_DIR/6_report.log" ;;
    lvs) candidate="$LOGS_DIR/6_lvs.log" ;;
    drc) candidate="$LOGS_DIR/6_drc.log" ;;
  esac
  [[ -n "$candidate" && -f "$candidate" ]] && printf '%s\n' "$candidate"
}

stage_artifact_summary() {
  local stage="$1"
  local msg=""
  local count
  case "$stage" in
    synth)
      msg="$(basename_list "$RESULTS_DIR/1_synth.odb" "$RESULTS_DIR/1_synth.sdc" | trim_trailing_space)"
      ;;
    floorplan)
      msg="$(basename_list "$RESULTS_DIR/2_floorplan.odb" | trim_trailing_space)"
      ;;
    place)
      msg="$(basename_list "$RESULTS_DIR/3_place.odb" | trim_trailing_space)"
      ;;
    cts)
      msg="$(basename_list "$RESULTS_DIR/4_cts.odb" | trim_trailing_space)"
      ;;
    route)
      msg="$(basename_list "$RESULTS_DIR/5_route.odb" "$RESULTS_DIR/route.guide" | trim_trailing_space)"
      ;;
    finish)
      msg="$(basename_list "$RESULTS_DIR/6_final.gds" "$RESULTS_DIR/6_final.def" "$RESULTS_DIR/6_final.v" | trim_trailing_space)"
      ;;
    lvs)
      if [[ -f "$LOGS_DIR/6_lvs.log" ]] && grep -q "Netlists match" "$LOGS_DIR/6_lvs.log"; then
        msg="Netlists match"
      else
        msg="see $(basename "$LOGS_DIR/6_lvs.log")"
      fi
      ;;
    drc)
      if [[ -f "$REPORTS_DIR/6_drc_count.rpt" ]]; then
        count="$(grep -Eo '[0-9]+' "$REPORTS_DIR/6_drc_count.rpt" | tail -n1)"
        [[ -z "$count" ]] && count="unknown"
        msg="violations=${count}"
      else
        msg="see $(basename "$LOGS_DIR/6_drc.log")"
      fi
      ;;
  esac

  [[ -n "$msg" ]] && printf '%s\n' "$msg"
}

stage_outputs_exist() {
  local stage="$1"
  case "$stage" in
    synth) [[ -f "$RESULTS_DIR/1_synth.odb" && -f "$RESULTS_DIR/1_synth.sdc" ]] ;;
    floorplan) [[ -f "$RESULTS_DIR/2_floorplan.odb" ]] ;;
    place) [[ -f "$RESULTS_DIR/3_place.odb" ]] ;;
    cts) [[ -f "$RESULTS_DIR/4_cts.odb" ]] ;;
    route) [[ -f "$RESULTS_DIR/5_route.odb" ]] ;;
    finish) [[ -f "$RESULTS_DIR/6_final.gds" && -f "$RESULTS_DIR/6_final.def" && -f "$RESULTS_DIR/6_final.v" ]] ;;
    lvs) [[ -f "$LOGS_DIR/6_lvs.log" ]] && grep -q "Netlists match" "$LOGS_DIR/6_lvs.log" ;;
    drc)
      [[ -f "$REPORTS_DIR/6_drc_count.rpt" ]] || return 1
      [[ "$(grep -Eo '[0-9]+' "$REPORTS_DIR/6_drc_count.rpt" | tail -n1)" == "0" ]]
      ;;
    *) return 1 ;;
  esac
}

report_check() {
  TOTAL_STAGES=$((TOTAL_STAGES + 1))
  check_setup
  PASSED_STAGES=$((PASSED_STAGES + 1))
  pass_line "check" "tools and config look good"
}

report_clean() {
  TOTAL_STAGES=$((TOTAL_STAGES + 1))
  clean_design
  PASSED_STAGES=$((PASSED_STAGES + 1))
  pass_line "clean" "previous outputs removed"
}

run_stage() {
  local stage="$1"
  shift || true
  local extra_args=("$@")
  local log_path=""

  TOTAL_STAGES=$((TOTAL_STAGES + 1))
  export KLAYOUT_CMD

  set +e
  case "$stage" in
    synth|floorplan|place|cts|route|finish)
      make_cmd "$stage" "${extra_args[@]}"
      ;;
    lvs)
      run_lvs_make
      ;;
    drc)
      run_drc_make
      ;;
    *)
      echo "Internal error: unsupported stage '$stage'" >&2
      exit 1
      ;;
  esac
  local status=$?
  set -e

  if [[ "$status" -ne 0 ]]; then
    log_path="$(latest_log_for_stage "$stage")"
    if [[ -n "$log_path" ]]; then
      fail_line "$stage" "see $log_path"
    else
      fail_line "$stage" "make returned ${status}"
    fi
    summary_fail "$stage"
    exit "$status"
  fi

  if ! stage_outputs_exist "$stage"; then
    log_path="$(latest_log_for_stage "$stage")"
    if [[ -n "$log_path" ]]; then
      fail_line "$stage" "completed without expected outputs; see $log_path"
    else
      fail_line "$stage" "completed without expected outputs"
    fi
    summary_fail "$stage"
    exit 1
  fi

  PASSED_STAGES=$((PASSED_STAGES + 1))
  pass_line "$stage" "$(stage_artifact_summary "$stage")"
}

run_all() {
  local extra_args=("$@")
  local stage
  for stage in synth floorplan place cts route finish; do
    run_stage "$stage" "${extra_args[@]}"
  done
}

run_signoff() {
  run_stage lvs
  run_stage drc
}

cmd="${1:-}"
if [[ $# -gt 0 ]]; then
  shift
fi

case "$cmd" in
  check)
    report_check
    summary_ok
    ;;
  show-env)
    show_env
    ;;
  clean)
    report_clean
    summary_ok
    ;;
  synth|floorplan|place|cts|route|finish)
    check_setup
    run_stage "$cmd" "$@"
    summary_ok
    ;;
  all)
    check_setup
    run_all "$@"
    summary_ok
    ;;
  lvs|drc)
    check_setup
    run_stage "$cmd"
    summary_ok
    ;;
  signoff)
    check_setup
    run_signoff
    summary_ok
    ;;
  rerun)
    check_setup
    report_clean
    run_all "$@"
    run_signoff
    summary_ok
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
