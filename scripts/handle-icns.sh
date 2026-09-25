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
	macicon icns "$app_dir/$app_name.png" --output "$app_dir/$app_name.icns" --force

	# Remove remnants
	rm -rf "$app_dir/$app_name.iconset"
	pngquant --force --output "$app_dir/$app_name.png" "$app_dir/$app_name.png"

}

update_dependencies() {

	# Update macicon
	printf "y\n" | brew install sundegan/tap/macicon
	printf "y\n" | brew upgrade sundegan/tap/macicon

	# Update pngquant
	printf "y\n" | brew install pngquant
	printf "y\n" | brew upgrade pngquant

}

main() {

	# Enable strictness
	set -euo pipefail

	# Update dependencies
	update_dependencies

	# Create icns
	local scripts_dir="$(cd "$(dirname "$0")" && pwd)"
	local source_dir="$(cd "$scripts_dir/.." && pwd)/source"
	for app_dir in "$source_dir"/*/; do
		[[ -d "$app_dir/$(basename "$app_dir").icon" ]] || continue
		create_icns "$app_dir"
	done

}

if [[ -z "${BASH_SOURCE[0]:-}" || "${BASH_SOURCE[0]}" == "$0" ]]; then main "$@"; fi
