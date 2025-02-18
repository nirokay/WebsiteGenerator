#!/usr/bin/env bash

nimble install

function runNim() {
    DIR=$1
    echo -e "Operating on $DIR"
    cd "$DIR" || {
        echo -e "Could not cd into $DIR (location: $(pwd))"
        exit 1
    }
    FILE=""
    if [[ -f "index.nim" ]]; then
        FILE="index.nim"
    else
        FILE=\*.nim
    fi
    if [ ! -f "$FILE" ]; then
        cd - &> /dev/null || {
            echo -e "Origin directory not found? (location: $(pwd))"
            exit 1
        }
    else
        # shellcheck disable=SC2086
        nim r --hints:off $FILE || {
            echo -e "Failed to run Nim on $DIR (location: $(pwd))"
        }
        cd - &> /dev/null || {
            echo -e "Origin directory not found? (location: $(pwd))"
            exit 1
        }
    fi
}

DIR_EXAMPLES=./examples/\*
for DIR in $DIR_EXAMPLES; do
    runNim "$DIR"
done
