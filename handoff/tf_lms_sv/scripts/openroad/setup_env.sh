#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Usage:
  ./setup_env.sh
  ./setup_env.sh --check
  ./setup_env.sh --restore
  ./setup_env.sh --openroad /path/to/openroad --yosys /path/to/yosys --klayout /path/to/klayout

What it does:
  1. Detects OpenROAD, Yosys, and KLayout.
  2. Installs the known-good tf_lms_sv ORFS collateral into this repo:
     - flow/designs/nangate45/tf_lms_sv/config.mk
     - flow/scripts/global_place.tcl
     - flow/scripts/util.tcl
  3. Writes scripts/openroad/env.sh with resolved local paths.

Options:
  --check      Only validate tools and files, do not patch repo.
  --restore    Restore backed up repo files from the last setup run.
  --openroad   Explicit OpenROAD executable path.
  --yosys      Explicit Yosys executable path.
  --klayout    Explicit KLayout executable path.
  -h, --help   Show this help.
EOF
}

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
HANDOFF_DIR="$(cd "$SCRIPT_DIR/../.." && pwd)"
REPO_ROOT="$(cd "$HANDOFF_DIR/../.." && pwd)"
BACKUP_DIR="$SCRIPT_DIR/.backup"
STATE_FILE="$SCRIPT_DIR/.install-state.tsv"
ENV_FILE="$SCRIPT_DIR/env.sh"

CHECK_ONLY=0
RESTORE_ONLY=0
OPENROAD_BIN="${OPENROAD_EXE:-}"
YOSYS_BIN="${YOSYS_EXE:-}"
KLAYOUT_BIN="${KLAYOUT_BIN:-}"

if [[ -z "$KLAYOUT_BIN" && -n "${KLAYOUT_CMD:-}" && "$KLAYOUT_CMD" != *" "* ]]; then
  KLAYOUT_BIN="$KLAYOUT_CMD"
fi

while [[ $# -gt 0 ]]; do
  case "$1" in
    --check)
      CHECK_ONLY=1
      shift
      ;;
    --restore)
      RESTORE_ONLY=1
      shift
      ;;
    --openroad)
      OPENROAD_BIN="${2:?missing value for --openroad}"
      shift 2
      ;;
    --yosys)
      YOSYS_BIN="${2:?missing value for --yosys}"
      shift 2
      ;;
    --klayout)
      KLAYOUT_BIN="${2:?missing value for --klayout}"
      shift 2
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

detect_exe() {
  local current="$1"
  shift
  local candidate
  if [[ -n "$current" ]]; then
    if [[ -x "$current" ]]; then
      printf '%s\n' "$current"
      return 0
    fi
    echo "Executable not found or not executable: $current" >&2
    return 1
  fi

  for candidate in "$@"; do
    if [[ -n "$candidate" && -x "$candidate" ]]; then
      printf '%s\n' "$candidate"
      return 0
    fi
  done

  return 1
}

shell_quote() {
  printf '%q' "$1"
}

print_detected() {
  echo "Repo root      : $REPO_ROOT"
  echo "Handoff dir    : $HANDOFF_DIR"
  echo "OpenROAD       : $OPENROAD_BIN"
  echo "Yosys          : $YOSYS_BIN"
  echo "KLayout        : $KLAYOUT_BIN"
  echo "Design config  : $REPO_ROOT/flow/designs/nangate45/tf_lms_sv/config.mk"
  echo "LVS deck       : $HANDOFF_DIR/scripts/openroad/klayout/FreePDK45_orfs_lvs.lylvs"
  echo "DRC deck       : $HANDOFF_DIR/scripts/openroad/klayout/FreePDK45_beol_noant.lydrc"
}

install_file() {
  local src="$1"
  local dst="$2"
  local rel_dst="${dst#$REPO_ROOT/}"
  local existed=0
  local backup="$BACKUP_DIR/$rel_dst"

  mkdir -p "$(dirname "$dst")"
  mkdir -p "$(dirname "$backup")"

  if [[ -e "$dst" ]]; then
    existed=1
    if [[ ! -e "$backup" ]]; then
      cp -a "$dst" "$backup"
    fi
    if cmp -s "$src" "$dst"; then
      printf '%s\t%s\n' "$dst" "$existed" >> "$STATE_FILE.tmp"
      echo "Up-to-date: $rel_dst"
      return 0
    fi
  fi

  cp -f "$src" "$dst"
  printf '%s\t%s\n' "$dst" "$existed" >> "$STATE_FILE.tmp"
  echo "Installed : $rel_dst"
}

restore_files() {
  if [[ ! -f "$STATE_FILE" ]]; then
    echo "No setup state found at $STATE_FILE" >&2
    exit 1
  fi

  while IFS=$'\t' read -r dst existed; do
    [[ -z "$dst" ]] && continue
    local rel_dst="${dst#$REPO_ROOT/}"
    local backup="$BACKUP_DIR/$rel_dst"

    if [[ "$existed" == "1" && -e "$backup" ]]; then
      mkdir -p "$(dirname "$dst")"
      cp -f "$backup" "$dst"
      echo "Restored  : $rel_dst"
    elif [[ "$existed" == "0" ]]; then
      rm -f "$dst"
      echo "Removed   : $rel_dst"
    fi
  done < "$STATE_FILE"
}

if [[ "$RESTORE_ONLY" -eq 1 ]]; then
  restore_files
  echo "Restore complete."
  exit 0
fi

OPENROAD_BIN="$(detect_exe "$OPENROAD_BIN" \
  "$(command -v openroad 2>/dev/null || true)" \
  "$REPO_ROOT/tools/install/OpenROAD/bin/openroad")"

YOSYS_BIN="$(detect_exe "$YOSYS_BIN" \
  "$(command -v yosys 2>/dev/null || true)" \
  "$REPO_ROOT/tools/install/yosys/bin/yosys" \
  "$REPO_ROOT/tools/oss-cad/oss-cad-suite/bin/yosys")"

KLAYOUT_BIN="$(detect_exe "$KLAYOUT_BIN" \
  "$(command -v klayout 2>/dev/null || true)" \
  "$REPO_ROOT/tools/install/klayout/klayout")"

for required_file in \
  "$HANDOFF_DIR/scripts/openroad/design/config.mk" \
  "$HANDOFF_DIR/scripts/openroad/flow/global_place.tcl" \
  "$HANDOFF_DIR/scripts/openroad/flow/util.tcl" \
  "$HANDOFF_DIR/scripts/openroad/klayout/FreePDK45_orfs_lvs.lylvs" \
  "$HANDOFF_DIR/scripts/openroad/klayout/FreePDK45_beol_noant.lydrc"; do
  if [[ ! -f "$required_file" ]]; then
    echo "Missing required file: $required_file" >&2
    exit 1
  fi
done

print_detected

if [[ "$CHECK_ONLY" -eq 1 ]]; then
  echo "Check complete."
  exit 0
fi

rm -f "$STATE_FILE.tmp"
install_file \
  "$HANDOFF_DIR/scripts/openroad/design/config.mk" \
  "$REPO_ROOT/flow/designs/nangate45/tf_lms_sv/config.mk"
install_file \
  "$HANDOFF_DIR/scripts/openroad/flow/global_place.tcl" \
  "$REPO_ROOT/flow/scripts/global_place.tcl"
install_file \
  "$HANDOFF_DIR/scripts/openroad/flow/util.tcl" \
  "$REPO_ROOT/flow/scripts/util.tcl"
mv "$STATE_FILE.tmp" "$STATE_FILE"

cat > "$ENV_FILE" <<EOF
#!/usr/bin/env bash
export TF_LMS_REPO_ROOT=$(shell_quote "$REPO_ROOT")
export TF_LMS_HANDOFF_DIR=$(shell_quote "$HANDOFF_DIR")
export OPENROAD_FLOW_DIR=$(shell_quote "$REPO_ROOT/flow")
export TF_LMS_DESIGN_CONFIG=$(shell_quote "$REPO_ROOT/flow/designs/nangate45/tf_lms_sv/config.mk")
export OPENROAD_EXE=$(shell_quote "$OPENROAD_BIN")
export YOSYS_EXE=$(shell_quote "$YOSYS_BIN")
export KLAYOUT_CMD=$(shell_quote "$KLAYOUT_BIN")
export KLAYOUT_LVS_FILE=$(shell_quote "$HANDOFF_DIR/scripts/openroad/klayout/FreePDK45_orfs_lvs.lylvs")
export KLAYOUT_DRC_FILE=$(shell_quote "$HANDOFF_DIR/scripts/openroad/klayout/FreePDK45_beol_noant.lydrc")
EOF
chmod +x "$ENV_FILE"

echo "Wrote env file: $ENV_FILE"
echo "Next:"
echo "  source $ENV_FILE"
echo "  $SCRIPT_DIR/run_flow.sh check"
echo "  $SCRIPT_DIR/run_flow.sh rerun"
