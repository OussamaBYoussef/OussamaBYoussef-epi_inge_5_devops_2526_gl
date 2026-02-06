#!/bin/bash

count=0
sum=0

while true; do
    read -p "Entrez une note (0-20, ou q pour quitter) : " input

    # Quitter si q
    if [[ "$input" == "q" ]]; then
        break
    fi

    # Quitter si note négative
    if (( input < 0 )); then
        break
    fi

    # Vérifier intervalle
    if (( input < 0 || input > 20 )); then
        echo "Note invalide"
        continue
    fi

    # Message selon la note
    if (( input >= 16 )); then
        echo "très bien"
    elif (( input >= 14 )); then
        echo "bien"
    elif (( input >= 12 )); then
        echo "assez bien"
    elif (( input >= 10 )); then
        echo "moyen"
    else
        echo "insuffisant"
    fi

    sum=$((sum + input))
    count=$((count + 1))
done

if (( count > 0 )); then
    moyenne=$(echo "scale=2; $sum / $count" | bc)
    echo "Nombre de notes saisies : $count"
    echo "Moyenne : $moyenne"
else
    echo "Aucune note saisie"
fi
