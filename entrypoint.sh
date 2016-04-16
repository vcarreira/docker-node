#!/bin/bash
set -e

if [ "$1" = 'bower' ]; then
    shift 1
    exec bower --allow-root $@
fi

exec $@
