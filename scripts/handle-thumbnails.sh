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
	COL=$([ $((NUM % 2)) -eq 0 ] && echo "#e2e8f0" || echo "#cbd5e1") # Slate 200 / Slate 300
	magick "$PNG" -bordercolor "$COL" -border 144 png:- | avifenc --stdin --input-format png "$OUT/thumbnail-${BNM}.avif"
done