#!/usr/bin/env bash

set -euo pipefail

DIR="$(cd "$(dirname "$0")" && pwd)"
RME="$DIR/../README.md"
SRC="$DIR/../.assets"
MAX=7

ALL=("$SRC"/thumbnail*.avif)
TXT="<table>"
for NUM in "${!ALL[@]}"; do
	((NUM % MAX == 0)) && TXT="${TXT}$([ "$NUM" -ne 0 ] && echo '</tr></tbody>')<tbody><tr>" || true
	BNM=$(basename "${ALL[$NUM]}" | sed "s/^thumbnail-//")
	FOL="${BNM%.avif}"
	TXT="${TXT}<td><a href=\"source/${FOL}/${BNM%%.*}.icns\"><img src=\".assets/$(basename "${ALL[$NUM]}")\" align=\"center\" width=\"99999\"></a></td>"
done
TXT="${TXT}</tr></tbody></table>"

awk -v BLK="$TXT" '
  /<!-- START_BLOCK -->/ { print; print BLK; skip=1; next }
  /<!-- CEASE_BLOCK -->/ { skip=0 }
  !skip
' "$RME" >"$RME.tmp" && mv "$RME.tmp" "$RME"