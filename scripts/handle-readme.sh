#!/usr/bin/env bash

set -euo pipefail

DIR="$(cd "$(dirname "$0")" && pwd)"
RME="$DIR/../README.md"
SRC="$DIR/../.assets"

ALL=("$SRC"/thumbnail*.avif)
MAX=${#ALL[@]}
TXT=""
for NUM in "${!ALL[@]}"; do
	ALN=$([ "$NUM" -lt $((MAX - (MAX % 9 == 0 ? 9 : MAX % 9))) ] && echo ' align="center"' || echo '')
	BNM=$(basename "${ALL[$NUM]}" | sed "s/^thumbnail-//")
	FOL="${BNM%.avif}"
	TXT="${TXT}<a href=\"source/${FOL}/${BNM}\"><img src=\".assets/$(basename "${ALL[$NUM]}")\"${ALN} width=\"11.1111111111%\"></a>"
done
awk -v BLK="<p>${TXT}</p>" '
	/<!-- START_BLOCK -->/ { print; print BLK; skip=1; next }
	/<!-- CEASE_BLOCK -->/ { skip=0 }
	!skip
' "$RME" >"$RME.tmp" && mv "$RME.tmp" "$RME"