#! /bin/sh

DIR=./temp/release

if [ -d "$DIR" ]; then
    cmake --build ./temp/release --config Release
else
    echo "[ERROR] | run build/bootstrap.sh to prepare build"
fi

read -r