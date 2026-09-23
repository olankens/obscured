#!/usr/bin/env bash

# shellcheck disable=SC2155
# shellcheck shell=bash

create_icns() {

	# Handle parameters
	local app_dir="$1"

	# Create image
	local app_name="$(basename "$app_dir")"
	local ictool_path="/Applications/Icon Composer.app/Contents/Executables/ictool"
	"$ictool_path" "$app_dir/$app_name.icon" \
		--export-image \
		--output-file "$app_dir/$app_name.png" \
		--platform macOS \
		--rendition Dark \
		--width 1024 \
		--height 1024 \
		--scale 1

	# Create icon
	local iconset_dir="$(mktemp -d)/$app_name.iconset"
	mkdir -p "$iconset_dir"
	local sizes=(
		"16 icon_16x16.png"
		"32 icon_16x16@2x.png"
		"32 icon_32x32.png"
		"64 icon_32x32@2x.png"
		"128 icon_128x128.png"
		"256 icon_128x128@2x.png"
		"256 icon_256x256.png"
		"512 icon_256x256@2x.png"
		"512 icon_512x512.png"
		"1024 icon_512x512@2x.png"
	)
	for s in "${sizes[@]}"; do
		read -r size filename <<<"$s"
		resize_icon "$size" "$filename" "$app_dir/$app_name.png" "$iconset_dir"
	done
	iconutil -c icns "$iconset_dir" -o "$app_dir/$app_name.icns"

	# Remove remnants
	rm -rf "${iconset_dir%/*}"
	pngquant --force --output "$app_dir/$app_name.png" "$app_dir/$app_name.png"

}

resize_icon() {

	# Handle parameters
	local target="$1"
	local filename="$2"
	local src="$3"
	local out_dir="$4"

	# Resize icon
	local content=$((target - 2 * target * 10 / 100))
	local picture="$(mktemp -t iconresize).png"
	sips -z "$content" "$content" "$src" --out "$picture" >/dev/null
	sips -s format png --padToHeightWidth "$target" "$target" "$picture" --out "$out_dir/$filename" >/dev/null

}

update_pngquant() {

	printf "y\n" | brew install pngquant
	printf "y\n" | brew upgrade pngquant

}

main() {

	# Enable strictness
	set -euo pipefail

	# Update dependencies
	update_pngquant

	# Create icns
	local scripts_dir="$(cd "$(dirname "$0")" && pwd)"
	local source_dir="$(cd "$scripts_dir/.." && pwd)/source"
	for app_dir in "$source_dir"/*/; do
		[[ -d "$app_dir/$(basename "$app_dir").icon" ]] || continue
		create_icns "$app_dir"
	done

}

if [[ -z "${BASH_SOURCE[0]:-}" || "${BASH_SOURCE[0]}" == "$0" ]]; then main "$@"; fi
