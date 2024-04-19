#!/bin/bash

set -e

echo "Generate HTML document with Asciidoctor "

docker run --rm -t \
    -v "$(pwd)":/documents/:rw \
    asciidoctor/docker-asciidoctor:1.69.0 \
        asciidoctor --failure-level=WARN -v -b html5 \
            README.adoc
