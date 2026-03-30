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

KLAYOUT_MIN_VERSION="0.30.3"

version_ge() {
  local lhs="$1"
  local rhs="$2"
  [[ "$(printf '%s\n%s\n' "$rhs" "$lhs" | sort -V | tail -n1)" == "$lhs" ]]
}

extract_semver() {
  printf '%s\n' "$1" | sed -n 's/.*\([0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\).*/\1/p' | head -n1
}

python_module_ok() {
  local module="$1"
  python3 - "$module" >/dev/null 2>&1 <<'PY'
import importlib
import sys

importlib.import_module(sys.argv[1])
PY
}

append_if_missing() {
  local value="$1"
  shift
  local -n target="$1"
  target+=("$value")
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
  if [[ -n "${DIR:-}" && -x "$DIR/dependencies/bin/$cmd" ]]; then
    printf '%s\n' "$DIR/dependencies/bin/$cmd"
    return 0
  fi
  command -v "$cmd" 2>/dev/null || return 1
}

command_available() {
  resolve_command_path "$1" >/dev/null 2>&1
}

warn_if_windows_mount() {
  case "$DIR" in
    /mnt/[A-Za-z]/*)
      cat >&2 <<EOF
Warning: repo is under a Windows-mounted filesystem: $DIR
Dependency setup and local builds are slower and more failure-prone there.
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

base_dependencies_ready() {
  local missing=()
  local cmd
  for cmd in git make cmake gcc g++ bison flex swig pkg-config python3 pip3 curl; do
    if ! command_available "$cmd"; then
      append_if_missing "$cmd" missing
    fi
  done

  local klayout_bin
  klayout_bin="$(resolve_command_path klayout || true)"
  if [[ -z "$klayout_bin" ]]; then
    append_if_missing "klayout>=${KLAYOUT_MIN_VERSION}" missing
  else
    local klayout_version
    klayout_version="$("$klayout_bin" -v 2>/dev/null | sed -n 's/.*KLayout \([0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\).*/\1/p' | head -n1)"
    if [[ -z "$klayout_version" ]] || ! version_ge "$klayout_version" "$KLAYOUT_MIN_VERSION"; then
      append_if_missing "klayout>=${KLAYOUT_MIN_VERSION}" missing
    fi
  fi

  if ((${#missing[@]})); then
    echo "Base dependency check is incomplete. Missing:"
    printf '  - %s\n' "${missing[@]}"
    print_ubuntu_hint
    return 1
  fi
}

common_dependencies_ready() {
  local missing=()
  local module

  if [[ ! -f "$DIR/dependencies/env.sh" ]]; then
    append_if_missing "dependencies/env.sh" missing
  fi

  if [[ ! -f "$DIR/tools/OpenROAD/etc/openroad_deps_prefixes.txt" ]]; then
    append_if_missing "tools/OpenROAD/etc/openroad_deps_prefixes.txt" missing
  fi

  if ! pkg-config --exists libpcre2-8 2>/dev/null && ! path_exists_any \
    "$DIR/dependencies/include/pcre2.h" \
    /usr/include/pcre2.h \
    /usr/include/x86_64-linux-gnu/pcre2.h; then
    append_if_missing "pcre2" missing
  fi

  if ! pkg-config --exists yaml-cpp 2>/dev/null && ! path_exists_any \
    "$DIR/dependencies/include/yaml-cpp/yaml.h" \
    /usr/include/yaml-cpp/yaml.h; then
    append_if_missing "yaml-cpp" missing
  fi

  if ! pkg-config --exists spdlog 2>/dev/null && ! path_exists_any \
    "$DIR/dependencies/include/spdlog/spdlog.h" \
    /usr/include/spdlog/spdlog.h; then
    append_if_missing "spdlog" missing
  fi

  if ! path_exists_any "$DIR/dependencies/include/boost/version.hpp" /usr/include/boost/version.hpp; then
    append_if_missing "boost" missing
  fi

  if ! path_exists_any "$DIR/dependencies/include/eigen3/Eigen/Core" /usr/include/eigen3/Eigen/Core; then
    append_if_missing "eigen3" missing
  fi

  if ! path_exists_any "$DIR/dependencies/include/gtest/gtest.h" /usr/include/gtest/gtest.h; then
    append_if_missing "gtest" missing
  fi

  if ! path_exists_any "$DIR/dependencies/include/lemon/list_graph.h" /usr/include/lemon/list_graph.h; then
    append_if_missing "lemon" missing
  fi

  if ! path_exists_any "$DIR/dependencies/include/cudd.h" /usr/include/cudd.h; then
    append_if_missing "cudd" missing
  fi

  if ! path_exists_any \
    "$DIR/dependencies/lib/cmake/ortools/ortoolsConfig.cmake" \
    "$DIR/dependencies/lib64/cmake/ortools/ortoolsConfig.cmake" \
    /opt/or-tools/lib/cmake/ortools/ortoolsConfig.cmake \
    /opt/or-tools/lib64/cmake/ortools/ortoolsConfig.cmake; then
    append_if_missing "or-tools" missing
  fi

  for module in pandas numpy firebase_admin click yamlfix yaml; do
    if ! python_module_ok "$module"; then
      append_if_missing "python:${module}" missing
    fi
  done

  if ((${#missing[@]})); then
    echo "Common dependency check is incomplete. Missing:"
    printf '  - %s\n' "${missing[@]}"
    return 1
  fi
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
warn_if_windows_mount

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

run_base=1
if base_dependencies_ready; then
  echo "Base dependencies already satisfy the setup preflight. Skipping -base."
  run_base=0
fi

run_common=1
if common_dependencies_ready; then
  echo "Common dependencies already satisfy the setup preflight. Skipping -common."
  run_common=0
fi

if [[ "$run_base" -eq 0 && "$run_common" -eq 0 ]]; then
  echo "Setup preflight passed. Nothing to install."
  exit 0
fi

if [[ "$run_base" -eq 1 ]]; then
  "$DIR/etc/DependencyInstaller.sh" -base "${installer_threads_arg[@]}"
fi

if [[ "$run_common" -eq 1 ]]; then
  sudo -u "$SUDO_USER" "$DIR/etc/DependencyInstaller.sh" -common -prefix="$DIR/dependencies" "${installer_threads_arg[@]}"
fi
