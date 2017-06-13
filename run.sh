#!/bin/bash
# Get dependencies
go get github.com/mrjensen/genny-demo
go get github.com/mrjensen/genny-log-demo
go get github.com/cheekybits/genny

cd ${GOPATH}/src/github.com/mrjensen/genny-demo
# First case - should be correct
$GOPATH/bin/genny -in=codegen/file_using_log.go -out=output_correct.go -pkg demopackage gen "Dummy=MyType"

go get github.com/prometheus/client_golang/prometheus
$GOPATH/bin/genny -in=codegen/file_using_log.go -out=output_wrong.go -pkg demopackage gen "Dummy=MyType"
