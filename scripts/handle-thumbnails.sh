#!/usr/bin/env bash

set -euo pipefail

DIR="$(cd "$(dirname "$0")" && pwd)"
SRC="$DIR/../source"
OUT="$DIR/../.assets"

mapfile -t ALL < <(find "$SRC" -maxdepth 2 -name "*.png" | sort)
for i in "${!ALL[@]}"; do
	PNG="${ALL[$i]}"
	[ -e "$PNG" ] || continue
	BNM="$(basename "$PNG" .png)"
	[ -e "$OUT/thumbnail-${BNM}.avif" ] && continue
	COL=$([ $(( i % 2 )) -eq 0 ] && echo "#cccccc" || echo "#888888")
	magick "$PNG" -bordercolor "$COL" -border 144 png:- | avifenc --stdin --input-format png "$OUT/thumbnail-${BNM}.avif"
done