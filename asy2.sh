#!/bin/bash
TEXDOC=$1


if ls $TEXDOC-*.asy >/dev/null 2>&1; then
    echo "Asymptote files found. Running Asymptote..."
    for ASYFILE in $TEXDOC-*.asy; do
        asy "$ASYFILE"
    done
else
    echo "No Asymptote files found. Skipping..."
fi
