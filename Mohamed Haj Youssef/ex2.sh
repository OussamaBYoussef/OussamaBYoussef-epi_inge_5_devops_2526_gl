#!/bin/bash

count=0
sum=0

while true; do
    echo -n "Entrez une note (0-20, ou q pour quitter) : "
    read note

    # Quitter si q
    if [ "$note" = "q" ]; then
        break
    fi

    # Quitter si note négative
    if [ "$note" -lt 0 ] 2>/dev/null; then
        break
    fi

    # Vérifier que la note est valide
    if [ "$note" -ge 0 ] && [ "$note" -le 20 ]; then
        if [ "$note" -ge 16 ]; then
            echo "très bien"
        elif [ "$note" -ge 14 ]; then
            echo "bien"
        elif [ "$note" -ge 12 ]; then
            echo "assez bien"
        elif [ "$note" -ge 10 ]; then
            echo "moyen"
        else
            echo "insuffisant"
        fi

        sum=$((sum + note))
        count=$((count + 1))
    else
        echo "Note invalide"
    fi
done

# Affichage final
if [ "$count" -gt 0 ]; then
    average=$(echo "scale=2; $sum / $count" | bc)
    echo "Nombre de notes saisies : $count"
    echo "Moyenne : $average"
else
    echo "Aucune note saisie"
fi
