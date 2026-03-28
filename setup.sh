#!/usr/bin/env bash

set -euo pipefail

usage() {
  cat <<'EOF'
Usage:
  sudo ./setup.sh [--threads N|auto]

Options:
  --threads N     Limit parallel build jobs for dependency installers.
  --threads auto  Auto-detect jobs from CPU count (default).
  -h, --help      Show this help.
EOF
}

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

THREADS=""
while [[ $# -gt 0 ]]; do
  case "$1" in
    --threads)
      THREADS="${2:?missing value for --threads}"
      shift 2
      ;;
    -threads=*)
      THREADS="${1#*=}"
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

# allow this script to be invoked from any folder
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$DIR"

if [ "${EUID}" -ne 0 ]; then
  echo "This script must be run with sudo"
  exit 1
fi

if [[ -z "${SUDO_USER:-}" ]]; then
  echo "This script must be launched via sudo from a non-root user."
  echo "Example: sudo ./setup.sh"
  exit 1
fi

if ! id "$SUDO_USER" >/dev/null 2>&1; then
  echo "Unable to resolve sudo user: $SUDO_USER"
  exit 1
fi

tmpfile=$(mktemp)
trap 'rm -f "$tmpfile"' EXIT
# any error messages from this command will stand out
# more clearly when run as a separate command rather than
# being piped
git submodule sync --recursive
git submodule status --recursive > "$tmpfile"

if grep -q "^-" "$tmpfile"; then
  submodule_args=(--init --recursive)
  if [[ -n "$THREADS" ]]; then
    submodule_args+=(--jobs "$THREADS")
  fi
  sudo -u "$SUDO_USER" git submodule update "${submodule_args[@]}"
elif grep -q "^+" "$tmpfile"; then
  # Make it easy for users who are not hacking ORFS to do the right thing,
  # run with current submodules, at the cost of having ORFS
  # hackers disable this test manually when hacking setup.sh
  echo "Submodules are not up to date, run 'git submodule update --recursive' and try again"
  exit 1
fi

for required_path in \
  "$DIR/tools/OpenROAD/etc/DependencyInstaller.sh" \
  "$DIR/tools/yosys/Makefile" \
  "$DIR/tools/yosys-slang/Makefile"; do
  if [[ ! -e "$required_path" ]]; then
    echo "Missing required dependency source: $required_path"
    echo "Run: git submodule update --init --recursive"
    exit 1
  fi
done

installer_threads_arg=()
if [[ -n "$THREADS" ]]; then
  installer_threads_arg=(-threads="$THREADS")
fi

"$DIR/etc/DependencyInstaller.sh" -base "${installer_threads_arg[@]}"
sudo -u "$SUDO_USER" "$DIR/etc/DependencyInstaller.sh" -common -prefix="$DIR/dependencies" "${installer_threads_arg[@]}"
