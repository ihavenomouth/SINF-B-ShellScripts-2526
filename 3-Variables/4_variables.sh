#!/bin/bash

# -------------------------------------
# - Creación
# -------------------------------------

# Las variables no se declaran, se crean dinámicamente
# edad=44
# # edad = 44 # intenta ejecutar la orden edad

# echo "Tu edad es $edad"

# No existen las constantes, sólo existe el convenío de escribirlas 
# en mayúsculas
# IVA=21
# IVA=23  # Puede ser modificada



# -------------------------------------
# - Modificación
# -------------------------------------

# Se puede cambiar el valor de una variable simplemente con el nombre, sin espacios y un igual y el valor
# edad=44
# echo "Tienes $edad años"
# edad=45
# echo "El curso que viene tendrás $edad"

# edad="Javier"     # se puede hacer, pero no es recomendable
# echo "Hasta luego $edad"  # se recupera el valor con $nombre_de_la_vble
# echo "Hasta luego edad"   # se recupera el valor con $nombre_de_la_vble



# -------------------------------------
# - Pedir datos al usuario
# -------------------------------------
# echo -n "Introduzca su nombre: "
# read nombre  # importante, se pide sin el $

# echo "Hola, $nombre" # se muestra con el $



# -------------------------------------
# - Operaciones aritméticas básicas
# -------------------------------------
# echo $(( 45 + 56 ))
# echo $(( 45 - 56 ))
# echo $(( 45 * 56 ))
# echo $(( 6 / 4 ))  # debería dar 1.5, pero se trunca a 1

# echo -n "Introduzca su edad: "
# read edad
# echo "Este curso tienes $edad años"

# edadCursoSiguiente=$(( $edad + 1 ))
# echo "Y el curso siguiente tendrás $edadCursoSiguiente años"



# -------------------------------------
# - Recuperar el resultado de una operación
# -------------------------------------
# fecha=$( date )
# echo "Fecha: $fecha"

# # copia de seguridad, tarda 10-12 minutos

# echo "Inicio de la copia: $fecha"
# echo "Fin de la copia: $( date )"


# -------------------------------------
# - Operaciones complejas
# -------------------------------------

# Calcular la media de un alumno que ha obtenido un 3, 4 y 7
# media=$( echo "scale=3;(3+4+7)/3" | bc -l )
# echo "El alumno tiene una media de $media"


# -------------------------------------
# - Variables de entorno
# -------------------------------------

# Son variables que proporcionan información sobre el entorno de ejecución
# Por ejemplo:
echo $USER  # el login del usuario
echo $HOME  # el directorio home del usuario
echo $UID   # el identificador del usuario
echo $HOSTNAME  # el nombre del equipo
echo $RANDOM    # un número aleatorio

