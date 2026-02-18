#!/bin/bash


#---------------------------------------
# Parámetros de entrada
#-----------------------------------------

# Podemos recuperar los parámetros del script usando variables de entrada

# echo $1 # primer parámetro
# echo $2 # segundo parámetro
# echo $3
# echo $4
# echo $5
# echo $6
# echo $7
# echo $8
# echo $9
# echo ${10} # para evitar que sea $1 + 0
# echo ${11}

#---------------------------------------
# Variables especiales sobre los parámetros
#-----------------------------------------

echo $#   # número de parámetros
echo $*   # lista de parámetros
echo $@   # lista de parámetros

echo $0   # el nombre del propio script
