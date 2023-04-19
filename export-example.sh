#!/bin/bash

set -o errexit

cd src
yarn && yarn export-example
cd ..

if ! command -v gs &> /dev/null
then
    echo "skipping file compression with ghostscript"
    exit
fi

gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/prepress -dNOPAUSE -dQUIET -dBATCH -sOutputFile=docs/slides.example-compressed.pdf docs/slides.example.pdf
mv docs/slides.example-compressed.pdf docs/slides.example.pdf