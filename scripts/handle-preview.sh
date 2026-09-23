#!/usr/bin/env bash

set -euo pipefail

DIR="$(cd "$(dirname "$0")" && pwd)"
SRC="$DIR/../source"
OUT="$DIR/../.assets/preview-01.avif"
TMP="$(mktemp -d)"

mapfile -t ALL < <(find "$SRC" -maxdepth 2 -name "*.icns" | shuf | head -n 8)
for NUM in "${!ALL[@]}"; do
	ICNS="${ALL[$NUM]}"
	[ -e "$ICNS" ] || continue
	ICONSET_TMP="$(mktemp -d)"
	iconutil -c iconset "$ICNS" -o "$ICONSET_TMP/icon.iconset"
	PNG="$ICONSET_TMP/icon.iconset/icon_512x512@2x.png"
	if [ ! -f "$PNG" ]; then PNG="$ICONSET_TMP/icon.iconset/icon_512x512.png"; fi
	COL=$([ $((((NUM / 4) + NUM) % 2)) -eq 0 ] && echo "#abacae" || echo "#333333")
	magick "$PNG" \
		-strip \
		-resize 160x160! \
		-bordercolor "$COL" \
		-border 48x24 \
		"$TMP/$(printf "%03d" $((NUM + 1))).png"
done
{ magick montage "$TMP"/*.png -tile 4x2 -geometry +0+0 png:- | avifenc --stdin --input-format png "$OUT"; } || true
