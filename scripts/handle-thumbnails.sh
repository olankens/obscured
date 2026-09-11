#!/usr/bin/env bash

set -euo pipefail

DIR="$(cd "$(dirname "$0")" && pwd)"
SRC="$DIR/../source"
OUT="$DIR/../.assets"
rm -f "$OUT"/thumbnail-*.avif

mapfile -t ALL < <(find "$SRC" -maxdepth 2 -name "*.icns" | sort)
for NUM in "${!ALL[@]}"; do
	ICNS="${ALL[$NUM]}"
	[ -e "$ICNS" ] || continue
	BNM="$(basename "$ICNS" .icns)"
	TMP="$(mktemp -d)"
	iconutil -c iconset "$ICNS" -o "$TMP/icon.iconset"
	PNG="$TMP/icon.iconset/icon_512x512@2x.png"
	if [ ! -f "$PNG" ]; then PNG="$TMP/icon.iconset/icon_512x512.png"; fi
	magick "$PNG" -resize 256x256! -strip png:- | avifenc --stdin --input-format png "$OUT/thumbnail-${BNM}.avif"
	rm -rf "$TMP"
done
