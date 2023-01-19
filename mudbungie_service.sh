function get_script_dir {
    SCRIPT_PATH="${BASH_SOURCE}"
    while [ -L "${SCRIPT_PATH}" ]; do
    SCRIPT_DIR="$(cd -P "$(dirname "${SCRIPT_PATH}")" >/dev/null 2>&1 && pwd)"
    SCRIPT_PATH="$(readlink "${SCRIPT_PATH}")"
    [[ ${SCRIPT_PATH} != /* ]] && SCRIPT_PATH="${SCRIPT_DIR}/${SCRIPT_PATH}"
    done
    SCRIPT_PATH="$(readlink -f "${SCRIPT_PATH}")"
    SCRIPT_DIR="$(cd -P "$(dirname -- "${SCRIPT_PATH}")" >/dev/null 2>&1 && pwd)"
    echo $SCRIPT_DIR
}

SCRIPT_DIR=`get_script_dir`
cd "$SCRIPT_DIR"

/home/mark/.cache/pypoetry/virtualenvs/mudbungie-net-5xIFX6TM-py3.11/bin/python -m gunicorn -c gunicorn_conf.py
# poetry run gunicorn -c gunicorn_conf.py
