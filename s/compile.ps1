#!/bin/env pwsh

go test -c github.com/sjs2109/notionapi
go test -c github.com/sjs2109/notionapi/tohtml
go build -o tmp.exe github.com/sjs2109/notionapi/cmd/test
remove-item ./tmp.exe
