#!/bin/bash
set -u -e -o pipefail

go build github.com/sjs2109/notionapi/cmd/tests
./tests || true
rm -rf ./tests
