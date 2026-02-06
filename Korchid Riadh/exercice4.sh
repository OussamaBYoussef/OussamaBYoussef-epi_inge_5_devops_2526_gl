#!/bin/bash

FILE="FichierNote.txt"

# Check if file exists
if [ ! -f "$FILE" ]; then
  echo "Le fichier $FILE n'existe pas."
  exit 1
fi

# Display lines with note >= 10
awk '$NF >= 10' "$FILE"
