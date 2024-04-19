#!/bin/bash

set -e

echo "Generate HTML Slides with Asciidoctor reveal.js"

docker run --rm -t -u "$(id -u):$(id -g)" \
    -v "$(pwd)":/documents/:rw \
    asciidoctor/docker-asciidoctor:1.69.0 \
        asciidoctor-revealjs --failure-level=WARN -v \
          fontbug.adoc
