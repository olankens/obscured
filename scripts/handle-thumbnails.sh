#!/usr/bin/env bash

set -euo pipefail

DIR="$(cd "$(dirname "$0")" && pwd)"
SRC="$DIR/../source"
OUT="$DIR/../.assets"

mapfile -t ALL < <(find "$SRC" -maxdepth 2 -name "*.png" | sort)
for NUM in "${!ALL[@]}"; do
	PNG="${ALL[$NUM]}"
	[ -e "$PNG" ] || continue
	BNM="$(basename "$PNG" .png)"
	magick "$PNG" -resize 256x256! -strip png:- | avifenc --stdin --input-format png "$OUT/thumbnail-${BNM}.avif"
done