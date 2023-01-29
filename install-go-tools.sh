# * godef
# https://github.com/rogpeppe/godef
GO111MODULE=off go get github.com/rogpeppe/godef


# * guru tools
#
go install golang.org/x/tools/cmd/guru


# * delve debugger
# https://github.com/go-delve/delve
go install github.com/go-delve/delve/cmd/dlv@latest
## go1.14 -> dlv@1.6.1
# go install github.com/go-delve/delve/cmd/dlv@v1.6.1


# * LSP server
# https://github.com/golang/tools/blob/master/gopls/doc/emacs.md
# NOTE: gopls _offically_ supports the last 2 major Go releases,
#       and attempts to support for the last 4 jaor Go releases
#       https://github.com/golang/tools/blob/master/gopls/README.md#support-policy
go install golang.org/x/tools/gopls@latest

# elisp client: https://github.com/joaotavora/eglot
