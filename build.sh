#!/bin/bash

files=$(ls [0-9]*.md)

for file in $files; do
	base=$(basename $file .md)

	pandoc --wrap=preserve $file -o ${base}.tex --listings
done

pdflatex praca
biber praca
makeglossaries praca
pdflatex praca
pdflatex praca
