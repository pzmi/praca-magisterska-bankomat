#/bin/bash

inotifywait -e CLOSE_WRITE -m * | 
    while read path ignored; do
        if [[ "$path" =~ .*(md|config\.tex|title\.tex)$ ]]; then 
            echo "$path changed"

            if [[ $path =~ ".md" ]]; then 
            	base=$(basename $path .md)
				pandoc $path -o ${base}.tex --listings
			fi

			pdflatex praca
			biber praca
			pdflatex praca
			pdflatex praca
        fi
    done