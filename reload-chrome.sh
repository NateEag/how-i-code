#! /bin/sh

# Tell Chrome to reload the URL passed in the first argument, via AppleScript.

script_dir=$(dirname "$0")

osascript "$script_dir/reload-chrome.scpt" "$1"
