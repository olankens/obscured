#!/usr/bin/env bash

set -euo pipefail

DIR="$(cd "$(dirname "$0")" && pwd)"
SRC="$DIR/../source"
OUT="$DIR/../.assets/preview-01.avif"
TMP="$(mktemp -d)"

mapfile -t ALL < <(find "$SRC" -maxdepth 2 -name "*.png" | sort | head -n 32)
for NUM in "${!ALL[@]}"; do
	PNG="${ALL[$NUM]}"
	COL=$([ $(((NUM / 8) % 2)) -eq 0 ] && { [ $((NUM % 2)) -eq 0 ] && echo "#333" || echo "#222"; } || { [ $((NUM % 2)) -eq 0 ] && echo "#222" || echo "#333"; })
	magick "$PNG" \
		-strip \
		-resize 80x80! \
		-bordercolor "$COL" \
		-border 24x12 \
		"$TMP/$(basename "$PNG")"
done

{ magick montage "$TMP"/*.png -tile 8x4 -geometry +0+0 png:- | avifenc --stdin --input-format png "$OUT"; } || true