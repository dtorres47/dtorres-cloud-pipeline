#!/usr/bin/env bash
set -e

# 1. Tidy and build the Go binary from the cmd/stream-overlay folder
go mod tidy
go build -o build/stream-overlay-server ./cmd/stream-overlay

# 2. Copy static web assets (index.html, panel.html) into the build area
rm -rf build/stream-overlay-web
mkdir -p build/stream-overlay-web
cp cmd/stream-overlay/web/* build/stream-overlay-web/

echo "✅ Build complete: build/stream-overlay-server + static web files"