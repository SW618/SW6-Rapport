#!/bin/sh

> notneeded
> needed

fgrep '\usepackage' $1 | cut -f 2 -d '{' | cut -f 1 -d '}' |
while read a; do
    egrep -v "\\usepackage(\[.+\])?\{$a\}" $1 > tmp.tex
    pdflatex -draftmode -shell-escape -halt-on-error master.tex &&
        echo $a >> notneeded || echo $a >> needed
done

