# * godef
# https://github.com/rogpeppe/godef
GO111MODULE=off go get github.com/rogpeppe/godef


# * guru tools
#
go install golang.org/x/tools/cmd/guru


# * delve debugger
# https://github.com/go-delve/delve
go install github.com/go-delve/delve/cmd/dlv@latest
# go1.14 -> dlv@1.6.1
# go install github.com/go-delve/delve/cmd/dlv@v1.6.1

