#!/bin/bash

suspensos=0
aprobados=0

while read nota
do
  if [ $nota -lt 5 ]
  then
    ((suspensos++))
  else
    ((aprobados++))
  fi
done < notas.txt

echo "Número de suspensos: $suspensos"
echo "Número de aprobados: $aprobados"

