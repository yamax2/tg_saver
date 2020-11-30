#!/bin/sh

if [ ! -f /go/bin/golangci-lint ]; then
  echo "Installing lintergolangci-lint $LINTER_TAG..."
  curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b /go/bin v${LINTER_TAG}
fi
