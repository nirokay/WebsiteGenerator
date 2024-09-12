#!/usr/bin/env bash

cd ./websitegenerator/attributes || exit 1
nim r generateFromCsv.nim
cd ../../ || exit 1
