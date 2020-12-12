#!/bin/sh

if [ ! -f $GOPATH/bin/golangci-lint ]; then
  echo "Installing lintergolangci-lint $LINTER_TAG..."
  curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $GOPATH/bin v${LINTER_TAG}
fi
