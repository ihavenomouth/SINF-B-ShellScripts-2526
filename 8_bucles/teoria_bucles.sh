#!/bin/bash

#-------------------------
# Bucles while
#-------------------------

# while [ condicion ];do
#   # código
# done

# i=0
# while [ $i -lt 5 ];do
#   echo "Hola!"
#   i=$(( $i + 1 ))
# done



#-------------------------
# Bucles for patrón iterador
#-------------------------

# for nombre in paco juan perro gato loro;do
#   echo $nombre
# done

# for nombre in $(ls);do
#   echo "Eliminando $nombre"
#   # rm $nombre
# done

# for num in $(seq 1 1000);do
#   echo "Número: $num"
#   #compruebo si es primo
# done

#-------------------------
# Leer un fichero palabra por palabra
#-------------------------
# for palabra in $(cat texto.txt);do
#   correcta=0
#   #comprobar si esa palabra está o no en el fichero de diccionario
#   for p in $(cat diccionario.txt);do
#     if [ "$p" == "$palabra" ];then
#       correcta=1
#     fi
#   done
  
#   if [ "$correcta" -eq 0 ];then
#     echo -en "\033[1;36;7m$palabra\033[0m ";
#     # echo -n "*$palabra* "
#   else
#     echo -n "$palabra "
#   fi

# done

#-------------------------
# Leer un fichero línea a línea
#-------------------------
i=1
while read linea;do
  echo "Línea $i: $linea"
  echo
  i=$((  $i + 1 ))
done < texto.txt


