#!/bin/bash

# Crea un script llamado edad.sh que haga lo siguiente:
# * Salude al usuario actual del sistema usando la variable de entorno $USER.
# * Pida al usuario (mediante read) su año de nacimiento.
# * Calcule cuántos años cumplirá el usuario en el año actual (puedes usar el año actual como una variable fija o investigar el comando `date +%Y`).
# * Muestre el resultado con un mensaje claro.

echo "Hola, $USER"

echo -n "Introduce el año de tu nacimiento: "
read anno_nac

anno_actual=$( date +%Y )

edad=$(( $anno_actual - $anno_nac ))

echo "Tienes $edad años"