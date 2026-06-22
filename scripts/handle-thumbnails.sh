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
	[ -e "$OUT/thumbnail-${BNM}.avif" ] && continue
	COL=$([ $(((NUM / 8) % 2)) -eq 0 ] && { [ $((NUM % 2)) -eq 0 ] && echo "#bae6fd" || echo "#7dd3fc"; } || { [ $((NUM % 2)) -eq 0 ] && echo "#7dd3fc" || echo "#bae6fd"; }) # Sky 200 / Sky 300
	magick "$PNG" -resize 80x80! -bordercolor "$COL" -border 24x12 png:- | avifenc --stdin --input-format png "$OUT/thumbnail-${BNM}.avif"
done