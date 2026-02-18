#!/bin/bash

# Por defecto echo añade un retorno de carro
# echo "Fecha actual: "
# date


# echo # línea en blanco
# echo # línea en blanco
# echo # línea en blanco

# # Sin el retorno de carro:
# echo -n "Fecha actual: "
# date


#---------------------------
# Cadenas de caracteres
#---------------------------
# echo "Esto es una cadena de caracteres"
# echo 'Esto es una cadena de caracteres'
# echo Esto es una cadena de caracteres # no recomendado


# Diferencia entre comillas simples y dobles
echo "Este es el primer parámetro: $1"
echo 'Este es el segundo parámetro: $2' # no se interpretan las variables

echo $0

