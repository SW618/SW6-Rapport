#!/bin/bash
TEXROOT=${1:-master.tex}
if [ ! -f $TEXROOT ];
then
    echo "Tex root not found!"
    echo "Specify the tex root (default master.tex)"
    echo "Example: ./getOrder.sh texroot.tex"
    exit 1
fi
echo $TEXROOT
#grep "\\\chapter{" $TEXROOT | cut -d '{' -f2 | cut -d '}' -f1 | xargs -n 1 -I ¤ echo -e \\n% Chapter: ¤
grep '\\includegraphics' $TEXROOT | grep -v '^\s*%' |  cut -d '{' -f2 | cut -d '}' -f1 | egrep '\..*$'
grep '\\input{' $TEXROOT | grep -vi '^\s*%' | cut -d '{' -f2 | cut -d '}' -f1 | egrep '\..*$' | xargs -n 1 -I % ./getOrder.sh %
#grep "\\lstinputlisting" $TEXROOT | grep -v 'Preamble\|Figures\|^\s*%' | cut -d '{' -f2 | cut -d '}' -f1 # | xargs -n 1 -I % ./getOrder.sh %

#TODO: handle lstinputlistng
