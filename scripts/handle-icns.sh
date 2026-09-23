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
	sips -z 16 16 "$app_dir/$app_name.png" --out "$iconset_dir/icon_16x16.png"
	sips -z 32 32 "$app_dir/$app_name.png" --out "$iconset_dir/icon_16x16@2x.png"
	sips -z 32 32 "$app_dir/$app_name.png" --out "$iconset_dir/icon_32x32.png"
	sips -z 64 64 "$app_dir/$app_name.png" --out "$iconset_dir/icon_32x32@2x.png"
	sips -z 128 128 "$app_dir/$app_name.png" --out "$iconset_dir/icon_128x128.png"
	sips -z 256 256 "$app_dir/$app_name.png" --out "$iconset_dir/icon_128x128@2x.png"
	sips -z 256 256 "$app_dir/$app_name.png" --out "$iconset_dir/icon_256x256.png"
	sips -z 512 512 "$app_dir/$app_name.png" --out "$iconset_dir/icon_256x256@2x.png"
	sips -z 512 512 "$app_dir/$app_name.png" --out "$iconset_dir/icon_512x512.png"
	sips -z 1024 1024 "$app_dir/$app_name.png" --out "$iconset_dir/icon_512x512@2x.png"
	iconutil -c icns "$iconset_dir" -o "$app_dir/$app_name.icns"

	# Remove remnants
	rm -rf "${iconset_dir%/*}"
	pngquant --force --output "$app_dir/$app_name.png" "$app_dir/$app_name.png"

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
