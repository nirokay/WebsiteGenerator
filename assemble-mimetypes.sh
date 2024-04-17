#!/usr/bin/env bash

cd ./websitegenerator/mimetypes || exit 1
nim r generateFromCsv.nim
cd ../../ || exit 1
