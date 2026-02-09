#!/bin/bash

# Crea un script llamado saludo.sh que reciba dos parámetros: un nombre y un rol (profesor, alumno, administrador, etc.).
# Comprueba que se han recibido exactamente dos parámetros. Si no es así muestra un mensaje de error y termina la ejecución del script.
# El script debe imprimir: "Hola [nombre], eres [rol]".
# Debe mostrar cuántos argumentos ha recibido el usuario en total.
# Debe imprimir un mensaje de despedida en una línea diferente.

if [ $# -ne 2 ];then
  echo "Error: debe indicar exactamente dos parámetros" 1>&2
  echo "El primer parámetro debe ser un nombre" 1>&2
  echo "El segundo parámetro debe ser el rol (admin, usuario, operator)" 1>&2
  exit 1
fi

# Aquí sabemos que hay exactamente dos parámetros

echo "Hola $1, eres $2"
echo "Nº argumentos: $#"
echo "¡Hasta luego!"


