#!/bin/bash

# --------------------------------------------
# Sintaxis básica de un condicional
# --------------------------------------------
# if [ condición ]; then
#   código
# fi

# Es muy tiquismiquis con los espacios en blanco. Cuidado. Es un error muy típico cuando
# se está empezando
# if [ "saludo" == "saludo" ]; then
#   echo "Hola caracola"
# fi


# --------------------------------------------
# Sintaxis básica de un condicional
# --------------------------------------------
# if [ condición ]; then
#   código
# else
#   código2
# fi

# if [ "$1" == "saludo" ]; then
#   echo "Hola caracola"
# else
#   echo "Hasta luego"
# fi

# --------------------------------------------
# Sintaxis básica de un condicional
# --------------------------------------------
# if [ condición ]; then
#   código
# elif [ condición ]; then
#   código2
# else
#   código3
# fi

if [ "$1" == "Javier" ]; then
  echo "Hola, Javier"
elif [ "$1" == "Paco" ]; then
  echo "Hola, Paco"
else
  echo "Hola ciudadano anónimo"
fi


# -------------------------------------------------
# Condiciones
# -------------------------------------------------

# Condiciones de cadenas de caracteres
# ------------------------------------
# "Hola" == "Hola"
# "Hola" != "Hola"

# Condiciones de números
# ------------------------------------
# 5 -eq 6       --> equal
# 5 -ne 6       --> not equal
# 5 -gt 6       --> greater than
# 5 -ge 6       --> greater than or equal
# 5 -lt 6       --> less than
# 5 -le 6       --> less than or equal

# Condiciones de ficheros y directorios
# -------------------------------------
# -f "fichero"   --> si existe un fichero llamado "fichero"
# -d "dir"       --> si existe un directorio llamado "directorio"
# -e "cosa"      --> si existe un directorio o fichero llamado "cosa"

# Condiciones de permisos
# -------------------------------------
# -r "cosa"      --> si el usuario que está ejecutando el script tiene permisos de lectura
# -w "cosa"      --> si el usuario que está ejecutando el script tiene permisos de escritura
# -x "cosa"      --> si el usuario que está ejecutando el script tiene permisos de ejecución

# if [ ! -w "info.txt" ];then
#   echo "Error: no tiene permisos de escritura sobre el fichero info.txt" 1>&2
# fi

