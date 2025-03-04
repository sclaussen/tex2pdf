#!/bin/bash +x
TEXDOC=`basename $1 | cut -f1 -d'.'`
echo "Generating $TEXDOC.pdf"
exit
pdflatex $TEXDOC >/dev/null 2>&1
if ls $TEXDOC-*.asy >/dev/null 2>&1; then
    echo "Here"
    for ASYFILE in $TEXDOC-*.asy; do
        echo "Generating $ASYFILE"
        asy "$ASYFILE"
    done
    echo "Regenerating $TEXDOC.pdf"
    pdflatex $TEXDOC >/dev/null 2>&1
fi
