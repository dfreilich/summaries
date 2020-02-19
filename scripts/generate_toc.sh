#!/bin/bash

if [[ $# -eq 0 ]]; then
    echo "Usage: ./scripts/generate_toc.sh <PATH TO FILE>"
    exit 1;
fi

markdown-toc -i "$1"
