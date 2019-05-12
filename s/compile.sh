#!/bin/bash
set -u -e -o pipefail -o verbose

go build -o tohtml github.com/sjs2109/notionapi/cmd/tohtml
rm -rf ./tohtml

go build -o dl github.com/sjs2109/notionapi/cmd/dl
rm -rf ./dl

go test -c github.com/sjs2109/notionapi
