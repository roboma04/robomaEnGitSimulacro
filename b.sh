#!/bin/bash

lista="matriculas.txt"

contador=0

# Leemos cada línea del archivo
while read line; 
    do
        contador=$((count + 1))
    done < "$lista"

echo "Hay $contador matrículas en el archivo $lista"
