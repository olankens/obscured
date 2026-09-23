#!/usr/bin/env bash

set -euo pipefail

DIR="$(cd "$(dirname "$0")" && pwd)"
RME="$DIR/../README.md"
SRC="$DIR/../source"
MAX=4

ALL=("$SRC"/*/*.png)
TXT="<table>"
for NUM in "${!ALL[@]}"; do
	((NUM % MAX == 0)) && TXT="${TXT}$([ "$NUM" -ne 0 ] && echo '</tr></tbody>')<tbody><tr>" || true
	FLD=$(basename "$(dirname "${ALL[$NUM]}")")
	TXT="${TXT}<td align=\"center\" width=\"99999\"><a href=\"source/${FLD}/${FLD}.icns\"><img src=\"source/${FLD}/${FLD}.png\" align=\"center\" width=\"56\"></a></td>"
done
TXT="${TXT}</tr></tbody></table>"

awk -v BLK="$TXT" '
  /<!-- START_BLOCK -->/ { print; print BLK; skip=1; next }
  /<!-- CEASE_BLOCK -->/ { skip=0 }
  !skip
' "$RME" >"$RME.tmp" && mv "$RME.tmp" "$RME"
