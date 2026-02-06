#!/bin/bash

read -p "Entrez une note (0-20) : " note

if (( note >= 16 && note <= 20 )); then
    echo "très bien"
elif (( note >= 14 && note < 16 )); then
    echo "bien"
elif (( note >= 12 && note < 14 )); then
    echo "assez bien"
elif (( note >= 10 && note < 12 )); then
    echo "moyen"
elif (( note < 10 )); then
    echo "insuffisant"
else
    echo "Note invalide"
fi
