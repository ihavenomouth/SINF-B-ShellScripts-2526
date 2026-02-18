#!/bin/bash

# Las redirecciones permiten redirigir el texto que se mostraría en pantalla a un fichero.

# echo "Hola caracola" > saludo.txt
# date > fecha.txt
# > vacío # Esto genera un fichero vacío


# ----------------------------
# Redirección simple:
# ----------------------------
# Si un fichero no existe, lo crea
# Si el fichero existe, lo sobreescribe

# echo "Hola" > saludo.txt
# date > saludo.txt



# ----------------------------
# Redirección dobles:
# ----------------------------
# Si un fichero no existe, lo crea
# Si el fichero existe, añade el contenido por el final
# echo "Hola" > saludo.txt
# echo -n "Fecha: " >> saludo.txt
# date >> saludo.txt


# ---------------------------
# Redirigir la salida estándar a la salida de error
# ---------------------------
# Todos los programas abren tres flujos: uno de entrada y dos de salida: el de salida estándar
# y el de error.

# ---> APP ---> salida estándar (1)
#       |--------> salida error (2)

echo "Esto es un mensaje normal para el usuario"
echo "Esto es un mensaje de error" 1>&2  # se redirige la salida estándar a la de error

# Si no quiero que se muestre un mensaje, puedo redirigirlo a /dev/null
ls *.txt *.jpg >/dev/null 2>/dev/null
