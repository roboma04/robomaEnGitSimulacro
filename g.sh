#!/bin/bash

suma=0
contador=0

while read nota
do
  ((suma+=nota))
  ((contador++))
done < notas.txt

media=$((suma/contador))

echo "La media de todas las notas es: $media"
