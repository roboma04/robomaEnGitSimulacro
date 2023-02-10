#!/bin/bash

tarifa1=100

tarifa2=50

tarifa3=20

precioLlamada2=1

precioLlamada3=2

if [ $# -eq 0 ]; then
  echo "Error: Debes proporcionar un número de llamadas."
  exit 1
fi

coste2=$((tarifa2 + ($1 * precioLlamada2)))

coste3=$((tarifa3 + ($1 * precioLlamada3)))

if [ $coste2 -lt $tarifa1 ] && [ $coste2 -lt $coste3 ]; then
  echo "La tarifa 2 es la más recomendable con un coste de $coste2€."
elif [ $coste3 -lt $tarifa1 ] && [ $coste3 -lt $coste2 ]; then
  echo "La tarifa 3 es la más recomendable con un coste de $coste3€."
else
  echo "La tarifa 1 es la más recomendable con un coste de $tarifa1€."
fi
