#! /bin/sh

cd "./temp" || exit

cmake -S ../../ -Brelease -DCMAKE_BUILD_TYPE=Release

read -r