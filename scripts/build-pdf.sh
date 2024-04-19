#!/bin/bash

set -e

echo "Generate PDF from HTML Slides with decktape"

docker run --rm -t -u "$(id -u):$(id -g)" \
    -v "$(pwd)":/slides \
    astefanutti/decktape:3.12.0 \
        fontbug.html fontbug.pdf

docker run --rm -t -u "$(id -u):$(id -g)" \
    -v "$(pwd)":/slides \
    ghcr.io/thomas-ferchau/decktape:pr-1 \
        fontbug.html fontbug-workaround.pdf
