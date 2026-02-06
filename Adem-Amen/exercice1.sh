#!/bin/bash

# Demander la note
echo -n "Entrez une note (0-20) : "
read note

# Vérifier que la note est un nombre entre 0 et 20
if ! [[ "$note" =~ ^[0-9]+$ ]] || [ "$note" -lt 0 ] || [ "$note" -gt 20 ]; then
  echo "Veuillez entrer une note valide entre 0 et 20."
  exit 1
fi

# Évaluation de la note
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
