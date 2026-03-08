# YTMusic Playlist Downloader
A Bash script wrapper for 'yt-dlp' to download full YouTube and YouTube Music playlists as .mp3 files. 

**Setup:** Before running the script for the first time, make it executable:
`chmod +x download_ytmusic.sh`

**Usage:** `./download_ytmusic.sh "PLAYLIST_URL"`
User may also paste URL to a single YouTube Music track or YouTube video. The script will work the same way as it does with playlists. 

## Prerequisites
This is a Bash script, so it requires a Unix-like terminal environment. It also relies on two core command-line tools to function: `yt-dlp` (for fetching the media) and `ffmpeg` (for extracting audio and embedding metadata).

### Linux
Install the required tools using your distribution's package manager:
* **Fedora/RHEL:** `sudo dnf install yt-dlp ffmpeg`
* **Ubuntu/Debian:** `sudo apt update && sudo apt install yt-dlp ffmpeg`

### macOS
The easiest way to install the requirements on a Mac is using [Homebrew](https://brew.sh/):
`brew install yt-dlp ffmpeg`

## Merits
* **High-Quality Extraction:** Automatically pulls the best available audio quality and converts it to .mp3 format.
* **Rich Metadata:** Automatically embeds album art, track titles, and playlist indexing directly into the audio files.
* **Anti-Blocking Features:** Utilizes Android client spoofing and randomized sleep intervals to bypass bot detection and rate-limiting.
* **Lightweight:** Runs entirely in the terminal, using minimal system resources compared to bulky GUI applications.

## Limitations
* **Premium Content Requires Cookies:** Accessing Premium-only or age-restricted tracks requires passing active session cookies (e.g., via `--cookies-from-browser`).
* **Maintenance Required:** YouTube frequently updates its backend code. You must regularly update the underlying `yt-dlp` package on your system to prevent "Video Unavailable" errors.
* **Terminal Only:** There is no graphical interface; it must be executed via the command line.
* **No Windows Support (Yet):** This script will run only on Linux and Mac devices. Currently, it does not support any version of Windows.

## Disclaimer
This script is provided for educational purposes and personal use only. Users are responsible for complying with the Terms of Service of the platforms they are downloading from. Please don't come after me for making this script or using it in bad way.
