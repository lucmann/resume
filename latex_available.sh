#!/bin/sh

# errexit
set -e

if [ -z "${LATEXENGINE+x}" ]; then
    echo >&2 "***"
    echo >&2 "*** Environment variable 'LATEXENGINE' is not set ***"
fi
