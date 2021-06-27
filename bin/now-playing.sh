#!/bin/sh

title=$(osascript -e 'tell application "Music" to get name of current track')
artist=$(osascript -e 'tell application "Music" to get artist of current track')
album=$(osascript -e 'tell application "Music" to get album of current track')
echo '\033[1m'$title'\033[m\n\033[3m'$artist '—' $album '\033[m'
