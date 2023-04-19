#!/bin/bash

set -o errexit

cd src
yarn && yarn export
cd ..

if ! command -v gs &> /dev/null
then
    echo "skipping file compression with ghostscript"
    exit
fi

# compresing `slides.pdf` and `slides-with-clicks.pdf` with ghostscript
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/prepress -dNOPAUSE -dQUIET -dBATCH -sOutputFile=slides-compressed.pdf slides.pdf
mv slides-compressed.pdf slides.pdf
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/prepress -dNOPAUSE -dQUIET -dBATCH -sOutputFile=slides-with-clicks-compressed.pdf slides-with-clicks.pdf
mv slides-with-clicks-compressed.pdf slides-with-clicks.pdf
