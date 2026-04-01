#!/usr/bin/env bash
set -euo pipefail

# Ensure Go is on PATH for this script
export PATH="/usr/local/go/bin:$HOME/go/bin:$PATH"

echo "PATH inside script: $PATH"

# Verify Go is available
if ! command -v go &>/dev/null; then
    echo "Error: Go not found in PATH!"
    exit 1
fi

echo "Go version: $(go version)"

# Ensure GOPATH/bin exists
mkdir -p "$HOME/go/bin"

# Example installation (replace with your actual bootdev commands)
go install github.com/bootdotdev/bootdev@latest

echo "bootdev installation complete!"