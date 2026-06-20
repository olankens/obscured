#!/usr/bin/env bash

set -euo pipefail

DIR="$(cd "$(dirname "$0")" && pwd)"

bash "$DIR/handle-icns.sh"
bash "$DIR/handle_thumbnails.sh"
bash "$DIR/handle_readme.sh"