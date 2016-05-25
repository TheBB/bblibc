#!/usr/bin/bash

if [[ -f "$2/retcode" ]]; then
    "./$1"
    actual=$?
    expected=$(cat "$2/retcode")
    if [[ "$actual" -ne "$expected" ]]; then
       exit 2
    fi
else
    "./$1" | diff "$2/expected" -
fi
