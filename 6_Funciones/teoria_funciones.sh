#!/bin/bash


#-----------------------------
# Funciónes
#-----------------------------
# Una función es un cacho de código con nombre que se puede invocar para ejecutar el código que
# contiene.

# ¿Para qué se usa?
# - Reutilizar el código
# - Mejorar la legibilidad y oraganización del código


# function saludo(){
#   echo "Hola caracola"
# }

# saludo


#-----------------------------
# Funciónes con parámetros
#-----------------------------

# function saludo(){
#   echo "Hola, $1" # el primer parámetro de la función
# }

# saludo "Javier"

# function saludoMúltiple(){
#   echo "Hola a todos: $1, $2, $3, $4"
# }

# saludoMúltiple "Javier" "Ana" "Pedro" "Paco"


#-----------------------------
# Funciónes con parámetros
#-----------------------------
# Lo que imprime por pantalla una función es lo que devuelve

# function media(){
#   primerNum=$1
#   segundoNum=$2
#   tercerNum=$3

#   echo "($primerNum + $segundoNum + $tercerNum)/3" | bc -l
# }



# resultado=$( media 57 76 123 )

# echo "El resultado es $resultado"



#----------------------
# Variables globales
#----------------------

# function f(){
#   letrab="letra b"  # esto es una varaible global
#   echo "$letraa"
# }

# letraa="letra a"

# f
# echo $letrab

#----------------------
# Variables locales
#----------------------

# function f(){
#   local letrab="letra b"  # esto es una varaible local
#   echo "$letraa"
# }

# letraa="letra a"

# f
# echo $letrab



function ls(){
  echo "Hola caracola"
}

ls