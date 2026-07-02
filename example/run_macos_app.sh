#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

restore_spm() {
  flutter config --enable-swift-package-manager >/dev/null
}

flutter config --no-enable-swift-package-manager
trap restore_spm EXIT

flutter build macos
open build/macos/Build/Products/Release/example.app
