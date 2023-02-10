#!/bin/bash

if [ $# -ne 1 ]
then
  echo "Error: debes pasar una nota como argumento"
  exit 1
fi

nota=$1

if [ $nota -lt 5 ]
then
  echo "Suspendido"
elif [ $nota -ge 5 ] && [ $nota -lt 8 ]
then
  echo "Aprobado"
else
  echo "Sobresaliente"
fi
