#!/bin/bash

count=0
sum=0

while true; do
  echo -n "Entrez une note (0-20, ou q pour quitter) : "
  read input

  # Quit condition
  if [ "$input" = "q" ]; then
    break
  fi

  # Negative note stops the loop
  if [[ "$input" =~ ^- ]]; then
    break
  fi

  # Validate numeric input
  if ! [[ "$input" =~ ^[0-9]+$ ]] || [ "$input" -gt 20 ]; then
    echo "Note invalide."
    continue
  fi

  note=$input

  # Evaluate the note
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

  # Update counters
  sum=$((sum + note))
  count=$((count + 1))
done

# Display results
if [ "$count" -eq 0 ]; then
  echo "Aucune note saisie."
else
  moyenne=$(echo "scale=2; $sum / $count" | bc)
  echo "Nombre de notes saisies : $count"
  echo "Moyenne : $moyenne"
fi
