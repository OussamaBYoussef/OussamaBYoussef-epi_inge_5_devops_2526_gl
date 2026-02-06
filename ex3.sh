#!/bin/bash

# Vérifier si un paramètre est fourni
if [ $# -ne 1 ]; then
    echo "Usage : $0 <fichier>"
    exit 1
fi

path="$1"

if [ -f "$path" ]; then
    echo "$path est un fichier régulier"
elif [ -d "$path" ]; then
    echo "$path est un dossier"
elif [ -L "$path" ]; then
    echo "$path est un lien symbolique"
else
    echo "$path n'existe pas ou type inconnu"
fi
