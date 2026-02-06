#!/bin/bash

echo "Entrez une note (0-20): "
read note

if [ "$note" -ge 16] && [ "$note" -le 20 ]; then
    echo "très bien"
elif [ "$note" -ge 14 ] && [ "$note" -lt 16 ]; then
    echo "bien"
elif [ "$note" -ge 12 ] && [ "$note" -lt 14 ]; then
    echo "assez bien"
elif [ "$note" -ge 10 ] && [ "$note" -lt 12 ]; then
    echo "moyen"
else
    echo "insuffisant"
fi
