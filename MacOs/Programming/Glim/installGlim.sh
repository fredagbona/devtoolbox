#!/bin/bash
# Download a verified Glim DMG; finish installation from Finder.
set -euo pipefail

glim_repo='https://github.com/NeoPanic/Glim'
glim_output_dir="$HOME/Downloads"

glim_error() { printf 'Glim: %s\n' "$*" >&2; exit 1; }
glim_usage() {
    printf 'Usage: bash installGlim.sh [--output-dir DIRECTORY]\n'
    printf 'Downloads the latest stable macOS DMG and verifies its published SHA-256.\n'
}

while [[ $# -gt 0 ]]; do
    case "$1" in
        --output-dir)
            [[ $# -ge 2 && -n "$2" ]] || glim_error '--output-dir needs a directory'
            glim_output_dir="$2"
            shift 2
            ;;
        -h|--help) glim_usage; exit 0 ;;
        *) glim_error "unknown option: $1" ;;
    esac
done

[[ "$(uname -s)" == Darwin ]] || glim_error 'macOS is required'
case "$(uname -m)" in
    arm64) glim_arch=arm64 ;;
    x86_64)
        if [[ "$(sysctl -in sysctl.proc_translated 2>/dev/null || true)" == 1 ]]; then
            glim_arch=arm64
        else
            glim_arch=x86_64
        fi
        ;;
    *) glim_error 'only Apple Silicon and Intel Macs are supported' ;;
esac

glim_release_url=$(curl --connect-timeout 20 --proto '=https' --proto-redir '=https' --fail --location --silent --show-error \
    --output /dev/null --write-out '%{url_effective}' "$glim_repo/releases/latest")
glim_release_prefix="$glim_repo/releases/tag/"
[[ "$glim_release_url" == "$glim_release_prefix"* ]] || glim_error 'unexpected release redirect'
glim_tag="${glim_release_url#"$glim_release_prefix"}"
[[ "$glim_tag" =~ ^v[0-9]+\.[0-9]+\.[0-9]+$ ]] || glim_error "unsupported stable release tag: $glim_tag"
glim_asset="Glim-${glim_tag#v}-macos-$glim_arch.dmg"
glim_asset_url="$glim_repo/releases/download/$glim_tag/$glim_asset"

[[ "$glim_output_dir" == /* ]] || glim_output_dir="$PWD/$glim_output_dir"
mkdir -p "$glim_output_dir"
glim_work_dir=$(mktemp -d "$glim_output_dir/.glim-download.XXXXXXXX")
trap 'rm -rf "$glim_work_dir"' EXIT
trap 'exit 130' INT
trap 'exit 143' TERM

curl --connect-timeout 20 --proto '=https' --proto-redir '=https' --fail --location --silent --show-error \
    --output "$glim_work_dir/checksum" "$glim_asset_url.sha256"
glim_expected_hash=''
glim_checksum_name=''
read -r glim_expected_hash glim_checksum_name < "$glim_work_dir/checksum" || true
glim_checksum_name="${glim_checksum_name#\*}"
[[ "$glim_checksum_name" == "$glim_asset" ]] || glim_error 'checksum names a different asset'
[[ "$glim_expected_hash" =~ ^[[:xdigit:]]{64}$ ]] || glim_error 'invalid SHA-256 checksum'
glim_expected_hash=$(printf '%s' "$glim_expected_hash" | tr 'A-F' 'a-f')

glim_verify() {
    local glim_actual_hash
    glim_actual_hash=$(shasum -a 256 "$1")
    [[ "${glim_actual_hash%% *}" == "$glim_expected_hash" ]]
}

glim_destination="$glim_output_dir/$glim_asset"
if [[ -e "$glim_destination" || -L "$glim_destination" ]]; then
    [[ -f "$glim_destination" ]] && glim_verify "$glim_destination" || \
        glim_error 'destination exists but does not match the release; choose another output directory'
    printf 'Already downloaded and verified: %s\n' "$glim_destination"
    exit 0
fi

curl --connect-timeout 20 --proto '=https' --proto-redir '=https' --fail --location --silent --show-error \
    --output "$glim_work_dir/$glim_asset" "$glim_asset_url"
glim_verify "$glim_work_dir/$glim_asset" || glim_error 'download failed SHA-256 verification'
# A same-filesystem hard link publishes only a verified file, without overwriting a raced destination.
ln "$glim_work_dir/$glim_asset" "$glim_destination" || glim_error 'destination appeared during download'
printf 'Downloaded and verified: %s\n' "$glim_destination"
printf 'Open the DMG in Finder, then copy Glim.app to Applications.\n'
printf 'First-launch requirements (the current DMGs are not Apple-notarized): %s#download\n' "$glim_repo"
