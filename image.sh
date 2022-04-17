#!/bin/bash -eu

DIR=$(dirname $0)
TMPFILE=$(mktemp)

pngpaste "$TMPFILE"
HASH=$(md5 < "$TMPFILE")

mv $TMPFILE "$DIR/static/images/$HASH.png"
echo "![]($IMG)" | tee >(pbcopy)
