#!/bin/bash
TEXROOT=${1:-master.tex}
sh getOrder.sh $TEXROOT > .usedfiles
if [ $? -eq 0 ];
then
    git ls-files | egrep -v '^\.|\.sh$|\.bib$|\.md$|Makefile' > .trackedreportfiles
    echo 'Unused files:'
    grep -Fxv -f .usedfiles .trackedreportfiles
    rm -f .usedfiles .trackedreportfiles
    exit 0
else
    cat .usedfiles
    rm -f .usedfiles
    exit 1
fi
