#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage : $0 <fichier>"
    exit 1
fi

fichier="$1"

if [ -f "$fichier" ]; then
    echo "$fichier est un fichier régulier"
elif [ -d "$fichier" ]; then
    echo "$fichier est un dossier"
elif [ -L "$fichier" ]; then
    echo "$fichier est un lien symbolique"
else
    echo "$fichier n'existe pas ou type inconnu"
fi
