#!/bin/bash

set -e

echo "Generate PDF from HTML Slides with decktape"
mkdir -pv pdf

docker run --rm -t \
    -v "$(pwd)":/slides/:rw \
    astefanutti/decktape:3.12.0 \
        fontbug.html pdf/fontbug.pdf

docker run --rm -t \
    -v "$(pwd)":/slides/:rw \
    ghcr.io/thomas-ferchau/decktape:pr-1 \
        fontbug.html pdf/fontbug-workaround.pdf
