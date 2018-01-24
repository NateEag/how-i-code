#! /bin/sh

# Tell Chrome to reload the URL passed in the first argument.
#
# Currently depends on AppleScript. Should I ever need to support it on Linux
# (for instance, if I finally run screaming from the land of Apple),
# chromix-too should do the job: https://github.com/smblott-github/chromix-too

script_dir=$(dirname "$0")

osascript "$script_dir/reload-chrome.scpt" "$1"
