#!/bin/bash
# Crea un shell script que reciba exactamente dos parámetros.
# Si el número de parámetros no es exactamente dos, mostrará un mensaje de error y terminará.
# Si recibe dos parámetros que sean números devolverá por pantalla el menor de ellos.



if [ $# -ne 2 ];then
  echo "Error: El número de parámetros del script debe ser exactamente dos." 1>&2
  exit 1
fi

# Si llego a esta línea, es que se reciben exáctamente dos parámetros,
# se mostrará por pantalla el menor de los dos
if [ $1 -lt $2 ];then
  echo "$1"
else
  echo "$2"
fi
