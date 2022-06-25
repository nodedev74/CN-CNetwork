#! /bin/sh

cd "./temp" || exit

cmake -S ../../ -Brelease -DCMAKE_BUILD_TYPE=Release

printf "\n[LOG] | Prepared successfully"

read -r