#!/bin/env pwsh

Remove-Item -Force -ErrorAction Ignore ./tests.exe

go build -o tests.exe github.com/sjs2109/notionapi/cmd/tests
./tests.exe

Remove-Item -Force -ErrorAction Ignore ./tests.exe
