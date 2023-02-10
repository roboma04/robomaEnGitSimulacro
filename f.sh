#!/bin/bash

nombre=$1

aprobados=0

while read line
do
  
  datos=($line)
  nombre_alumno=${datos[0]}
  nota=${datos[1]}
  
  if [ $nombre == $nombre_alumno ]
  then
    if [ $nota -ge 5 ]
    then
      ((aprobados++))
    fi
  fi
done < notas.txt

if [ $aprobados -eq 0 ]
then
  echo "$nombre no ha aprobado ninguna materia."
else
  echo "$nombre ha aprobado $aprobados materias."
fi
