#!/usr/bin/env bash
# This script builds the OpenROAD Flow tools locally or in a Docker image.

# Exit on first error, do not allow unbound variables
set -Eeuo pipefail

# Make sure we are on the correct folder before beginning
DIR="$(dirname "$(readlink -f "$0")")"
cd "$DIR"

# Set up paths to dependencies, such as cmake and boost. Safe no-op
# if tools were set up elsewhere in the path.
. dev_env.sh

# Defaults variable values
NICE=""

OPENROAD_APP_REMOTE="origin"
OPENROAD_APP_BRANCH="master"

INSTALL_PATH="$(pwd)/tools/install"
BUILD_STATE_FILE=""
STATE_WRITE_OPENROAD_SRC=""
STATE_WRITE_YOSYS_SRC=""
STATE_WRITE_YOSYSSLANG_SRC=""
STATE_WRITE_KEPLER_SRC=""
STATE_WRITE_OPENROAD_ARGS=""
STATE_WRITE_YOSYS_ARGS=""
STATE_WRITE_CXX=""
STATE_WRITE_WITH_VERIFIC=""
STATE_WRITE_VERIFIC_DIR=""

YOSYS_USER_ARGS=""
YOSYS_ARGS=""

OPENROAD_APP_USER_ARGS=""
OPENROAD_APP_ARGS=""

DOCKER_OS_NAME="ubuntu22.04"
PROC=-1

VERIFIC_COMPONENTS='database util containers pct hier_tree verilog'
WITH_VERIFIC=0
VERIFIC_DIR=""

log_error_context() {
        local exit_code=$?
        trap - ERR
        local line="${BASH_LINENO[0]:-unknown}"
        cat >&2 << EOF
[ERROR FLW-0099] build_openroad.sh failed at line ${line} (exit ${exit_code}).
Check the logs:
  - ${DIR}/build_openroad.log
  - ${DIR}/tools/OpenROAD/build/openroad_build.log

Common fixes:
  - Re-sync sources: git submodule update --init --recursive
  - Reinstall missing build deps: sudo ./setup.sh
  - Remove stale outputs before retry: ./build_openroad.sh --clean-force --local
EOF
        exit "${exit_code}"
}
trap log_error_context ERR

warn_if_windows_mount() {
        case "$DIR" in
                /mnt/[A-Za-z]/*)
                        cat << EOF
[WARNING FLW-0033] Repository is under a Windows-mounted filesystem (${DIR}).
Building OpenROAD and Yosys on /mnt/<drive> under WSL is slower and more failure-prone.
Prefer moving the repo under the Linux filesystem, e.g. ~/adaptive-lms.
EOF
                        ;;
        esac
}

require_file() {
        local path="$1"
        local description="$2"
        if [[ ! -e "$path" ]]; then
                echo "[ERROR FLW-0034] Missing ${description}: ${path}" >&2
                echo "Run: git submodule update --init --recursive" >&2
                exit 1
        fi
}

check_command() {
        local cmd="$1"
        local hint="$2"
        if ! command -v "$cmd" >/dev/null 2>&1; then
                echo "[ERROR FLW-0035] Missing required command: ${cmd}" >&2
                echo "Hint: ${hint}" >&2
                exit 1
        fi
}

compiler_major_version() {
        local compiler_path="$1"
        if [[ "$compiler_path" == *clang* ]]; then
                "$compiler_path" --version 2>/dev/null | sed -n 's/.*clang version \([0-9][0-9]*\).*/\1/p' | head -n1
        else
                "$compiler_path" -dumpfullversion -dumpversion 2>/dev/null | awk -F. 'NF { print $1; exit }'
        fi
}

ensure_supported_yosys_slang_compiler() {
        local cxx="$1"
        local major
        major="$(compiler_major_version "$cxx")"
        if [[ -z "$major" ]]; then
                echo "[ERROR FLW-0036] Unable to determine compiler version for ${cxx}" >&2
                exit 1
        fi

        if [[ "$cxx" == *clang* ]]; then
                if (( major < 17 )); then
                        echo "[ERROR FLW-0037] yosys-slang requires clang 17+ but found ${cxx} (${major})." >&2
                        exit 1
                fi
        else
                if (( major < 11 )); then
                        echo "[ERROR FLW-0038] yosys-slang requires GCC 11+ but found ${cxx} (${major})." >&2
                        exit 1
                fi
        fi
}

install_openroad_bin() {
        echo "${INSTALL_PATH}/OpenROAD/bin/openroad"
}

install_yosys_bin() {
        echo "${INSTALL_PATH}/yosys/bin/yosys"
}

install_yosys_plugin() {
        echo "${INSTALL_PATH}/yosys/share/yosys/plugins/slang.so"
}

install_kepler_bin() {
        echo "${INSTALL_PATH}/kepler-formal/bin/kepler-formal"
}

build_state_file() {
        echo "${INSTALL_PATH}/.build-state.env"
}

shell_quote() {
        printf '%q' "$1"
}

source_tree_fingerprint() {
        local path="$1"
        local rev
        rev="$(git -C "$path" rev-parse HEAD 2>/dev/null || echo missing)"
        if [[ "$rev" == "missing" ]]; then
                echo ""
                return 0
        fi

        if [[ -n "$(git -C "$path" status --porcelain --untracked-files=normal 2>/dev/null | head -n1)" ]]; then
                echo ""
                return 0
        fi

        echo "${rev}"
}

load_build_state() {
        BUILD_STATE_FILE="$(build_state_file)"
        if [[ -f "${BUILD_STATE_FILE}" ]]; then
                # shellcheck disable=SC1090
                source "${BUILD_STATE_FILE}"
        fi
}

write_build_state() {
        BUILD_STATE_FILE="$(build_state_file)"
        mkdir -p "$(dirname "${BUILD_STATE_FILE}")"
        cat > "${BUILD_STATE_FILE}" << EOF
BUILD_STATE_OPENROAD_SRC=$(shell_quote "${STATE_WRITE_OPENROAD_SRC}")
BUILD_STATE_YOSYS_SRC=$(shell_quote "${STATE_WRITE_YOSYS_SRC}")
BUILD_STATE_YOSYSSLANG_SRC=$(shell_quote "${STATE_WRITE_YOSYSSLANG_SRC}")
BUILD_STATE_KEPLER_SRC=$(shell_quote "${STATE_WRITE_KEPLER_SRC}")
BUILD_STATE_OPENROAD_ARGS=$(shell_quote "${STATE_WRITE_OPENROAD_ARGS}")
BUILD_STATE_YOSYS_ARGS=$(shell_quote "${STATE_WRITE_YOSYS_ARGS}")
BUILD_STATE_CXX=$(shell_quote "${STATE_WRITE_CXX}")
BUILD_STATE_WITH_VERIFIC=$(shell_quote "${STATE_WRITE_WITH_VERIFIC}")
BUILD_STATE_VERIFIC_DIR=$(shell_quote "${STATE_WRITE_VERIFIC_DIR}")
EOF
}

openroad_build_state_matches() {
        load_build_state
        [[ -n "${BUILD_STATE_OPENROAD_SRC:-}" ]] || return 1
        [[ "${BUILD_STATE_OPENROAD_SRC}" == "$(source_tree_fingerprint "${DIR}/tools/OpenROAD")" ]] || return 1
        [[ "${BUILD_STATE_OPENROAD_ARGS:-}" == "${OPENROAD_APP_ARGS}" ]] || return 1
}

yosys_build_state_matches() {
        load_build_state
        [[ -n "${BUILD_STATE_YOSYS_SRC:-}" ]] || return 1
        [[ "${BUILD_STATE_YOSYS_SRC}" == "$(source_tree_fingerprint "${DIR}/tools/yosys")" ]] || return 1
        [[ "${BUILD_STATE_YOSYS_ARGS:-}" == "${YOSYS_ARGS}" ]] || return 1
        [[ "${BUILD_STATE_WITH_VERIFIC:-0}" == "${WITH_VERIFIC}" ]] || return 1
        [[ "${BUILD_STATE_VERIFIC_DIR:-}" == "${VERIFIC_DIR}" ]] || return 1
        [[ "${BUILD_STATE_CXX:-}" == "${CXX:-}" ]] || return 1
}

yosys_slang_build_state_matches() {
        load_build_state
        [[ -n "${BUILD_STATE_YOSYSSLANG_SRC:-}" ]] || return 1
        [[ "${BUILD_STATE_YOSYSSLANG_SRC}" == "$(source_tree_fingerprint "${DIR}/tools/yosys-slang")" ]] || return 1
        [[ "${BUILD_STATE_YOSYS_SRC:-}" == "$(source_tree_fingerprint "${DIR}/tools/yosys")" ]] || return 1
        [[ "${BUILD_STATE_CXX:-}" == "${CXX:-}" ]] || return 1
}

kepler_build_state_matches() {
        load_build_state
        [[ -n "${BUILD_STATE_KEPLER_SRC:-}" ]] || return 1
        [[ "${BUILD_STATE_KEPLER_SRC}" == "$(source_tree_fingerprint "${DIR}/tools/kepler-formal")" ]] || return 1
        [[ "${BUILD_STATE_CXX:-}" == "${CXX:-}" ]] || return 1
}

validate_openroad_install() {
        local bin
        bin="$(install_openroad_bin)"
        [[ -x "$bin" ]] || return 1
        "$bin" -version >/dev/null 2>&1
}

validate_yosys_install() {
        local bin
        bin="$(install_yosys_bin)"
        [[ -x "$bin" ]] || return 1
        "$bin" -V >/dev/null 2>&1
}

validate_yosys_slang_install() {
        local yosys_bin plugin
        yosys_bin="$(install_yosys_bin)"
        plugin="$(install_yosys_plugin)"
        [[ -x "$yosys_bin" && -f "$plugin" ]] || return 1
        "$yosys_bin" -m slang -p 'help read_slang' >/dev/null 2>&1
}

validate_kepler_install() {
        local bin
        bin="$(install_kepler_bin)"
        [[ -x "$bin" ]] || return 1
        "$bin" --help >/dev/null 2>&1
}

verify_component() {
        local name="$1"
        shift
        if "$@"; then
                echo "[INFO FLW-0039] Verified ${name} install."
                return 0
        fi

        echo "[ERROR FLW-0040] ${name} build/install did not produce a usable binary." >&2
        case "$name" in
                OpenROAD)
                        echo "Check tools/OpenROAD/build/openroad_build.log for the failing CMake or compiler step." >&2
                        ;;
                Yosys)
                        echo "Check tools/yosys build output in build_openroad.log; common causes are missing flex/bison/libffi/readline/zlib headers." >&2
                        ;;
                yosys-slang)
                        echo "Check build_openroad.log; common causes are a compiler older than GCC 11 / clang 17 or an unusable local Yosys install." >&2
                        ;;
                kepler-formal)
                        echo "Check build_openroad.log; common causes are missing CMake dependencies or an incomplete third-party checkout." >&2
                        ;;
        esac
        exit 1
}

preflight_local_build() {
        warn_if_windows_mount
        mkdir -p "${INSTALL_PATH}"
        if [[ ! -w "${INSTALL_PATH}" ]]; then
                echo "[ERROR FLW-0041] Install path is not writable: ${INSTALL_PATH}" >&2
                exit 1
        fi
        require_file "${DIR}/tools/OpenROAD/etc/Build.sh" "OpenROAD build script"
        require_file "${DIR}/tools/yosys/Makefile" "Yosys source tree"
        require_file "${DIR}/tools/yosys-slang/Makefile" "yosys-slang source tree"
        require_file "${DIR}/tools/kepler-formal/CMakeLists.txt" "kepler-formal source tree"

        check_command git "Run the system package installer first."
        check_command make "Run the system package installer first."
        check_command cmake "Run the system package installer first."
        check_command python3 "Run the system package installer first."
        check_command pkg-config "Run the system package installer first."

        if [ -z "${SKIP_OPENROAD+x}" ]; then
                check_command bison "OpenROAD local builds require bison."
                check_command flex "OpenROAD local builds require flex."
                check_command swig "OpenROAD local builds require swig."
        fi
}

build_openroad_component() {
        echo "[INFO FLW-0018] Compiling OpenROAD."
        eval ${NICE} ./tools/OpenROAD/etc/Build.sh -dir="$DIR/tools/OpenROAD/build" -threads=${PROC} -cmake=\'${OPENROAD_APP_ARGS}\'
        ${NICE} cmake --build tools/OpenROAD/build --target install -j "${PROC}"
        verify_component "OpenROAD" validate_openroad_install
}

build_yosys_component() {
        echo "[INFO FLW-0017] Compiling Yosys."
        eval ${NICE} make install -C tools/yosys -j "${PROC}" ${YOSYS_ARGS}
        verify_component "Yosys" validate_yosys_install
}

build_yosys_slang_component() {
        echo "[INFO FLW-0030] Compiling yosys-slang."
        ensure_supported_yosys_slang_compiler "${CXX}"
        ${NICE} make install -C tools/yosys-slang -j "${PROC}" YOSYS_PREFIX="${INSTALL_PATH}/yosys/bin/" CMAKE_FLAGS="-DYOSYS_SLANG_REVISION=unknown -DSLANG_REVISION=unknown"
        verify_component "yosys-slang" validate_yosys_slang_install
}

build_kepler_component() {
        echo "[INFO FLW-0031] Compiling kepler-formal"
        ${NICE} cmake -B tools/kepler-formal/build tools/kepler-formal \
                -DCMAKE_BUILD_TYPE=Release \
                -DCMAKE_CXX_FLAGS_RELEASE="-Ofast -march=native -ffast-math -flto" \
                -DCMAKE_EXE_LINKER_FLAGS="-flto" \
                -DCMAKE_BUILD_RPATH="${DIR}/tools/kepler-formal/build/thirdparty/naja/src/dnl:${DIR}/tools/kepler-formal/build/thirdparty/naja/src/nl/nl:${DIR}/tools/kepler-formal/build/thirdparty/naja/src/optimization" \
                -DCMAKE_INSTALL_RPATH="${INSTALL_PATH}/kepler-formal/lib" \
                -DCMAKE_BUILD_WITH_INSTALL_RPATH=OFF \
                -DCMAKE_INSTALL_RPATH_USE_LINK_PATH=OFF \
                -DCMAKE_INSTALL_PREFIX="${INSTALL_PATH}/kepler-formal"
        ${NICE} cmake --build tools/kepler-formal/build --target install -j "${PROC}"
        verify_component "kepler-formal" validate_kepler_install
}

function usage() {
        cat << EOF

Usage: $0 [-h|--help] [-o|--local] [-l|--latest]
          [--or_branch BRANCH_NAME] [--or_repo REPO_URL] [--no_init]
          [-n|--nice] [-t|--threads N]
          [--yosys-args-overwrite] [--yosys-args STRING]
          [--with-verific PATH]
          [--openroad-args-overwrite] [--openroad-args STRING]
          [--install-path PATH] [--clean] [--clean-force]

          [-c|--copy-platforms]

Options:
    -h, --help              Print this help message.

    -o, --local             Build locally instead of building a Docker image.

    -l, --latest            Use the head of branch --or_branch or 'master'
                            by default for tools/OpenROAD.

    -s, --skip_openroad     Skip building and all git operations on OpenROAD.

    --or_branch BRANCH_NAME Use the head of branch BRANCH for tools/OpenROAD.

    --or_repo REPO_URL      Use a fork at REPO-URL (https/ssh) for tools/OpenROAD.

    --no_init               Skip initializing submodules.

    -t, --threads N         Use N cpus when compiling software.

    -n, --nice              Nice all jobs. Use all cpus unless --threads is
                            also given, then use N threads.

    --yosys-args-overwrite  Do not use default flags set by this scrip during
                            Yosys compilation.

    --yosys-args STRING     Additional compilation flags for Yosys compilation.

    --with-verific PATH     Compile Yosys with Verific support. PATH is the path
                            to the Verific source folder.

    --openroad-args-overwrite
                            Do not use default flags set by this scrip during
                            OpenROAD app compilation.

    --openroad-args STRING  Additional compilation flags for OpenROAD app
                            compilation.

    --install-path PATH     Path to install tools. Default is ${INSTALL_PATH}.

    --clean                 Call git clean interactively before compile.
                            Useful to remove old build files.

    --clean-force           Call git clean before compile. WARNING: this option
                            will not ask for confirmation. Useful to remove
                            old build files.


Options valid only for Docker builds:
    -c, --copy-platforms    Copy platforms to inside docker image.

    --os=DOCKER_OS_NAME     Choose between ubuntu22.04 (default), ubuntu20.04.

    This script builds the OpenROAD tools: openroad, yosys and yosys plugins.
    By default, the tools will be built from the linked submodule hashes.

EOF
}

# Parse arguments
__CMD="$0 $@"
while (( "$#" )); do
        case "$1" in
                -h|--help)
                        usage 2> /dev/null
                        exit
                        ;;
                -o|--local)
                        LOCAL_BUILD=1
                        ;;
                -l|--latest)
                        USE_OPENROAD_APP_LATEST=1
                        ;;
                -s|--skip_openroad)
                        SKIP_OPENROAD=1
                        ;;
                --or_branch)
                        OPENROAD_APP_BRANCH="$2"
                        shift
                        ;;
                --or_repo)
                        OPENROAD_APP_GIT_URL="$2"
                        shift
                        ;;
                --no_init)
                        OPENROAD_FLOW_NO_GIT_INIT=1
                        ;;
                -t|--threads)
                        PROC="$2"
                        shift
                        ;;
                -n|--nice)
                        NICE="nice"
                        ;;
                -c|--copy-platforms)
                        DOCKER_COPY_PLATFORMS=1
                        ;;
                --yosys-args-overwrite)
                        YOSYS_OVERWRITE_ARGS=1
                        ;;
                --yosys-args)
                        YOSYS_USER_ARGS="$2"
                        shift
                        ;;
                --with-verific)
                        YOSYS_USER_ARGS+=" ENABLE_VERIFIC=1"
                        YOSYS_USER_ARGS+=" ENABLE_VERIFIC_VHDL=0"
                        YOSYS_USER_ARGS+=" VERIFIC_COMPONENTS='${VERIFIC_COMPONENTS}'"
                        VERIFIC_DIR=${2}
                        if [ ! -d "${VERIFIC_DIR}" ]; then
                                echo "[ERROR] Verific path '${VERIFIC_DIR}' does not exist." >&2
                                exit 1
                        fi
                        YOSYS_USER_ARGS+=" VERIFIC_DIR=${VERIFIC_DIR}"
                        WITH_VERIFIC=1
                        shift
                        ;;
                --openroad-args-overwrite)
                        OPENROAD_APP_OVERWRITE_ARGS=1
                        ;;
                --openroad-args)
                        OPENROAD_APP_USER_ARGS="$2"
                        shift
                        ;;
                --install-path)
                        INSTALL_PATH="$2"
                        shift
                        ;;
                --clean)
                        CLEAN_BEFORE=1
                        ;;
                --clean-force)
                        CLEAN_BEFORE=1
                        CLEAN_FORCE=1
                        ;;
                --os=* )
                        DOCKER_OS_NAME="${1#*=}"
                        ;;
                -*|--*) # unsupported flags
                        echo "[ERROR FLW-0005] Unsupported flag $1." >&2
                        usage 2> /dev/null
                        exit 1
                        ;;
        esac
        shift
done

if [[ "$PROC" == "-1" ]]; then
        if [[ "$OSTYPE" == "linux-gnu"* ]]; then
                PROC=$(nproc --all)
        elif [[ "$OSTYPE" == "darwin"* ]]; then
                PROC=$(sysctl -n hw.ncpu)
        else
                cat << EOF
[WARNING FLW-0025] Unsupported OSTYPE: cannot determine number of host CPUs"
  Defaulting to 2 threads. Use --threads N to use N threads"
EOF
  PROC=2
        fi
fi

echo "[INFO FLW-0028] Compiling with ${PROC} threads."

# Only add install prefix variables after parsing arguments.
YOSYS_ARGS+=" PREFIX=${INSTALL_PATH}/yosys"
OPENROAD_APP_ARGS+=" -D CMAKE_INSTALL_PREFIX=${INSTALL_PATH}/OpenROAD"
if [ -n "$CMAKE_INSTALL_RPATH" ]; then
        OPENROAD_APP_ARGS+=" -D CMAKE_INSTALL_RPATH=${CMAKE_INSTALL_RPATH}"
        OPENROAD_APP_ARGS+=" -D CMAKE_INSTALL_RPATH_USE_LINK_PATH=TRUE"
fi

__args_setup() {
        if [ ! -z "${YOSYS_OVERWRITE_ARGS+x}" ]; then
                echo "[INFO FLW-0014] Overwriting Yosys compilation flags."
                YOSYS_ARGS="${YOSYS_USER_ARGS}"
        else
                YOSYS_ARGS+=" ${YOSYS_USER_ARGS}"
        fi

        if [ ! -z "${OPENROAD_APP_OVERWRITE_ARGS+x}" ]; then
                echo "[INFO FLW-0015] Overwriting OpenROAD app compilation flags."
                OPENROAD_APP_ARGS="${OPENROAD_APP_USER_ARGS}"
        else
                OPENROAD_APP_ARGS+=" ${OPENROAD_APP_USER_ARGS}"
        fi
}

__docker_build()
{
        echo "[INFO FLW-0020] Building docker image for OpenROAD Flow."
        if [ ! -z "${DOCKER_COPY_PLATFORMS+x}" ]; then
                cp .dockerignore{,.bak}
                sed -i '/flow\/platforms/d' .dockerignore
        fi
        ./etc/DockerHelper.sh create -target=dev -os="${DOCKER_OS_NAME}" -threads="${PROC}"
        ./etc/DockerHelper.sh create -target=builder -os="${DOCKER_OS_NAME}" -threads="${PROC}"
        if [ ! -z "${DOCKER_COPY_PLATFORMS+x}" ]; then
                mv .dockerignore{.bak,}
        fi
}

__local_build()
{
        preflight_local_build
        STATE_WRITE_OPENROAD_SRC=""
        STATE_WRITE_YOSYS_SRC=""
        STATE_WRITE_YOSYSSLANG_SRC=""
        STATE_WRITE_KEPLER_SRC=""
        STATE_WRITE_OPENROAD_ARGS=""
        STATE_WRITE_YOSYS_ARGS=""
        STATE_WRITE_CXX="${CXX:-}"
        STATE_WRITE_WITH_VERIFIC="${WITH_VERIFIC}"
        STATE_WRITE_VERIFIC_DIR="${VERIFIC_DIR}"
        if [[ "$OSTYPE" == "darwin"* ]]; then
          export PATH="$(brew --prefix bison)/bin:$(brew --prefix flex)/bin:$(brew --prefix tcl-tk)/bin:$PATH"
          export CMAKE_PREFIX_PATH=$(brew --prefix or-tools)
        fi
        if [[ -f "/opt/rh/rh-python38/enable" ]]; then
            set +u
            source /opt/rh/rh-python38/enable
            set -u
        fi
        if [[ -f "/opt/rh/devtoolset-8/enable" ]]; then
            # the scl script has unbound variables
            set +u
            source /opt/rh/devtoolset-8/enable
            set -u
        fi

        if [ -z "${SKIP_OPENROAD+x}" ]; then
            if [ -z "${USE_OPENROAD_APP_LATEST+x}" ] \
                && [ "${OPENROAD_APP_BRANCH}" = "master" ] \
                && [ -z "${OPENROAD_APP_GIT_URL+x}" ] \
                && [ -z "${CLEAN_BEFORE+x}" ] \
                && [ -z "${OPENROAD_APP_USER_ARGS}" ] \
                && [ -z "${OPENROAD_APP_OVERWRITE_ARGS+x}" ] \
                && openroad_build_state_matches \
                && validate_openroad_install; then
                echo "[INFO FLW-0042] OpenROAD already installed and passes sanity checks. Skipping rebuild."
                STATE_WRITE_OPENROAD_SRC="$(source_tree_fingerprint "${DIR}/tools/OpenROAD")"
                STATE_WRITE_OPENROAD_ARGS="${OPENROAD_APP_ARGS}"
            else
                build_openroad_component
                STATE_WRITE_OPENROAD_SRC="$(source_tree_fingerprint "${DIR}/tools/OpenROAD")"
                STATE_WRITE_OPENROAD_ARGS="${OPENROAD_APP_ARGS}"
            fi
        fi

        YOSYS_ABC_PATH=tools/yosys/abc
        if [[ -d "${YOSYS_ABC_PATH}/.git" ]]; then
            # update indexes to make sure git diff-index uses correct data
            git --work-tree=${YOSYS_ABC_PATH} --git-dir=${YOSYS_ABC_PATH}/.git update-index --refresh
        fi

        if [ ${WITH_VERIFIC} -eq 1 ]; then
                echo "[INFO FLW-0031] Compiling Verific components."
                cp -r "${VERIFIC_DIR}" verific
                for c in ${VERIFIC_COMPONENTS}; do
                        make -j -C "verific/${c}" clean
                        make -j -C "verific/${c}"
                done
        fi

        if [ -z "${CLEAN_BEFORE+x}" ] \
                && [ -z "${YOSYS_USER_ARGS}" ] \
                && [ -z "${YOSYS_OVERWRITE_ARGS+x}" ] \
                && [ "${WITH_VERIFIC}" -eq 0 ] \
                && yosys_build_state_matches \
                && validate_yosys_install; then
                echo "[INFO FLW-0043] Yosys already installed and passes sanity checks. Skipping rebuild."
                STATE_WRITE_YOSYS_SRC="$(source_tree_fingerprint "${DIR}/tools/yosys")"
                STATE_WRITE_YOSYS_ARGS="${YOSYS_ARGS}"
        else
                build_yosys_component
                STATE_WRITE_YOSYS_SRC="$(source_tree_fingerprint "${DIR}/tools/yosys")"
                STATE_WRITE_YOSYS_ARGS="${YOSYS_ARGS}"
        fi

        if [ -z "${CLEAN_BEFORE+x}" ] && [ "${WITH_VERIFIC}" -eq 0 ] && yosys_slang_build_state_matches && validate_yosys_slang_install; then
                echo "[INFO FLW-0044] yosys-slang already installed and passes sanity checks. Skipping rebuild."
                STATE_WRITE_YOSYSSLANG_SRC="$(source_tree_fingerprint "${DIR}/tools/yosys-slang")"
        else
                build_yosys_slang_component
                STATE_WRITE_YOSYSSLANG_SRC="$(source_tree_fingerprint "${DIR}/tools/yosys-slang")"
        fi

        if validate_kepler_install && [ -z "${CLEAN_BEFORE+x}" ] && kepler_build_state_matches; then
                echo "[INFO FLW-0045] kepler-formal already installed and passes sanity checks. Skipping rebuild."
                STATE_WRITE_KEPLER_SRC="$(source_tree_fingerprint "${DIR}/tools/kepler-formal")"
        else
                build_kepler_component
                STATE_WRITE_KEPLER_SRC="$(source_tree_fingerprint "${DIR}/tools/kepler-formal")"
        fi

        if [ ${WITH_VERIFIC} -eq 1 ]; then
                echo "[INFO FLW-0032] Cleaning up Verific components."
                rm -rf verific
        fi

        write_build_state
}

__update_openroad_app_remote()
(
        cd tools/OpenROAD
        remotes=$(git remote)
        SAVEIFS=$IFS
        IFS=$'\n'
        remotes=($remotes)
        IFS=$SAVEIFS
        if [[ ! " ${remotes[@]} " =~ " ${OPENROAD_APP_REMOTE} " ]]; then
                git remote add "${OPENROAD_APP_REMOTE}" "${OPENROAD_APP_GIT_URL}"
        fi
)

__change_openroad_app_remote()
{
        base_url=$(dirname "${OPENROAD_APP_GIT_URL}")
        if [[ ${base_url##*/} = $base_url ]]; then
                OPENROAD_APP_REMOTE=${base_url##*:}
        else
                OPENROAD_APP_REMOTE=${base_url##*/}
        fi
        __update_openroad_app_remote
}

__update_openroad_app_latest()
(
        cd tools/OpenROAD
        git fetch "${OPENROAD_APP_REMOTE}"
        git checkout "${OPENROAD_APP_REMOTE}/${OPENROAD_APP_BRANCH}"
        git pull "${OPENROAD_APP_REMOTE}" "${OPENROAD_APP_BRANCH}"
        git submodule update --init --recursive
)

__common_setup()
{
        # Clone repositories
        if [ -z "${OPENROAD_FLOW_NO_GIT_INIT+x}" ]; then
                echo "[INFO FLW-0002] Updating git submodules."
                git submodule update --init --recursive
        fi

        if [ ! -z "${OPENROAD_APP_GIT_URL+x}" ]; then
                echo -n "[INFO FLW-0003] Changing OpenROAD app remote to"
                echo " ${OPENROAD_APP_GIT_URL}."
                __change_openroad_app_remote
        fi

        if [ -z "${SKIP_OPENROAD+x}" ] &&  ( [ ! -z "${USE_OPENROAD_APP_LATEST+x}" ] || [ "${OPENROAD_APP_BRANCH}" != "master" ] ) ; then
                echo -n "[INFO FLW-0004] Updating OpenROAD app to the HEAD"
                echo "  of ${OPENROAD_APP_REMOTE}/${OPENROAD_APP_BRANCH}."
                __update_openroad_app_latest
        fi
}

__logging()
{
        local log_file="build_openroad.log"
        echo "[INFO FLW-0027] Saving logs to ${log_file}"
        echo "[INFO FLW-0028] $__CMD"
        exec > >(tee -i "${log_file}")
        exec 2>&1
}

__cleanup()
{
        if [ ! -z "${CLEAN_FORCE+x}" ]; then
                CLEAN_CMD="-x -d --force"
        else
                CLEAN_CMD="-x -d --interactive"
        fi
        echo "[INFO FLW-0026] Cleaning up previous binaries and build files."
        git clean ${CLEAN_CMD} tools
        YOSYS_ABC_PATH="tools/yosys/abc"
        if [[ -d "${YOSYS_ABC_PATH}" ]]; then
                echo "Entering '${YOSYS_ABC_PATH}'"
                git --work-tree=${YOSYS_ABC_PATH} --git-dir=${YOSYS_ABC_PATH}/.git clean ${CLEAN_CMD}
        fi
        git submodule foreach --recursive git clean ${CLEAN_CMD}
}

__logging
if [ ! -z "${CLEAN_BEFORE+x}" ]; then
        __cleanup
fi
__args_setup
__common_setup

# Choose install method
if [ -z "${LOCAL_BUILD+x}" ] && command -v docker &> /dev/null; then
        echo "[INFO FLW-0000] Using docker build method."
        __docker_build
else
        echo -n "[INFO FLW-0001] Using local build method."
        echo " This will create binaries at 'tools/install' unless overwritten."
        __local_build
fi
