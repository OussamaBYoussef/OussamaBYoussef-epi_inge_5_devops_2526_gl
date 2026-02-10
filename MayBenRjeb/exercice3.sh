#!/bin/bash

# Vérifier qu'un paramètre est fourni
if [ $# -ne 1 ]; then
    echo "Usage : $0 <fichier>"
    exit 1
fi

file="$1"

if [ -f "$file" ]; then
    echo "$file est un fichier régulier"
elif [ -d "$file" ]; then
    echo "$file est un dossier"
elif [ -L "$file" ]; then
    echo "$file est un lien symbolique"
else
    echo "$file n’existe pas ou type inconnu"
fi
