#!/bin/bash

total=0
count=0

while true; do
    echo "Entrez une note (0-20, ou q pour quitter) : "
    read note

    if [ "$note" = "q" ]; then
        break
    fi

    if [ "$note" -lt 0 ]; then
        break
    fi

    if [ "$note" -ge 16 ] && [ "$note" -le 20 ]; then
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

    total=$((total + note))
    count=$((count + 1))
done

echo "Nombre de notes saisies : $count"

if [ "$count" -gt 0 ]; then
    moyenne=$(echo "scale=2; $total / $count" | bc)
    echo "Moyenne : $moyenne"
else
    echo "Moyenne : 0.00"
fi
