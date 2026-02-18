#!/bin/bash

# Crea un shell script que si no recibe parámetros cuente cuánto deben en total los clientes que aparecen en el fichero datos.txt.
# Si recibe un parámetro, devolverá cuánto debe el cliente cuyo nombre sea el del primer parámetro.

# 1 ana 1256
# 2 gato 156
# 3 loro 786
# 4 perro 654
# 50 pescado 23
# 5 triana 908
# 11 zorro 67
# 6 mono 345

# Si no hay parámetros, habrá que recorrer el fichero sumando lo que deben los clientes
if [ $# -eq 0 ];then
  total=0

  for cantidad in $(cat datos.txt | cut -d " " -f3 );do
    total=$((  $total + $cantidad ))
  done

  echo "La cantidad total que deben los clientes es $total €"
  exit 0
fi

# Si hay parámetros, habrá que recorrer el fichero buscando al cliente cuyo nombre se pasa como primer parámetro

while read linea;do

  nombre_cliente=$( echo $linea | cut -d " " -f2 )

  if [ "$1" == "$nombre_cliente" ];then
    cantidad=$( echo $linea | cut -d " " -f3 )
    echo "El cliente $1 debe $cantidad"
    exit 0
  fi

done < datos.txt

echo "El cliente $1 no existe o no es un moroso"