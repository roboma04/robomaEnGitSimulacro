#!/bin/bash

nombre=$1
modulo=$2

while read linea
do
  alumno=$(echo $linea | cut -d " " -f 1)
  nota=$(echo $linea | cut -d " " -f 2)
  
  if [ "$alumno" == "$nombre" ] && [ "$modulo" == "$(echo $linea | cut -d " " -f 3)" ]
  then
    if [ $nota -lt 5 ]
    then
      echo "Suspendido"
      break
    elif [ $nota -ge 5 ] && [ $nota -lt 7 ]
    then
      echo "Aprobado"
      break
    else
      echo "Sobresaliente"
      break
    fi
  fi
done < notas.txt
