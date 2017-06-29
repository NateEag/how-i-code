#! /bin/bash

basedir=$(dirname "$0")

# Spawn these in the background so we can kill them via job id.
fswatch -o "$basedir/content" |\
    xargs -n1 -I{} "$basedir/reload-chrome.sh" http://localhost:7999 &

kill-children () {
    kill %1

    exit
}

trap 'kill-children; exit' INT TERM EXIT

# Do nothing until we're killed so that we don't terminate the script by
# reaching its end.
while true; do
    sleep 1
done
