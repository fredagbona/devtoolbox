# Glim for macOS

[Glim](https://github.com/NeoPanic/Glim) is an MIT-licensed file viewer and basic text editor for macOS, with Apple Silicon and Intel builds. It previews Markdown and diagrams, source code, Git diffs, PDFs and structured data. See the [supported formats](https://github.com/NeoPanic/Glim/blob/main/docs/file-format-support.md) for individual reader capabilities and limitations.

## Download

From the repository root:

```bash
bash MacOs/Programming/Glim/installGlim.sh
# Optional: choose the download directory
bash MacOs/Programming/Glim/installGlim.sh --output-dir "$HOME/Downloads/Glim"
```

The script selects the native architecture, including Apple Silicon when running under Rosetta, resolves the [latest stable release](https://github.com/NeoPanic/Glim/releases/latest), and downloads its DMG into `~/Downloads` by default. It validates the DMG against the SHA-256 file published with that release before exposing the completed download. Matching existing downloads are reused; mismatched files are preserved and the command fails. Choose a different output directory to resolve a conflict.

Downloads ignore curl configuration files, so a local curlrc cannot weaken the requested HTTPS verification. Publication prefers a hard link and falls back to a no-clobber move on volumes without hard-link support.

The checksum detects a damaged or mismatched download; it is obtained from the same release and is not independent publisher authentication. The script expects stable `vMAJOR.MINOR.PATCH` tags and the documented `Glim-VERSION-macos-ARCH.dmg` naming. It stops if those conventions change.

Open the downloaded DMG in Finder and copy Glim.app to Applications. Current Glim DMGs are **not Apple-notarized**; read the official [first-launch instructions](https://github.com/NeoPanic/Glim#download) before opening the app.

The `installGlim.sh` name follows DevToolBox's launcher convention. This script only prepares the download: installation remains manual. It does not mount images, replace an existing app, launch software, invoke sudo, or change Gatekeeper or quarantine settings. It uses Bash, curl, shasum and standard macOS utilities; Homebrew is not required.

## Development checks

The optional tests require Python 3. They use temporary directories and mocked network/platform commands, without downloading or installing Glim:

```bash
bash -n MacOs/Programming/Glim/installGlim.sh
python3 MacOs/Programming/Glim/testDownloadGlim.py
```
