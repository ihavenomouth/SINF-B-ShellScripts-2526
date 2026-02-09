#!/bin/bash

# Crea un script llamado simulabackup.sh que simule la creación de una copia de seguridad:
# * Define una variable con el nombre de un archivo (ej. archivo="datos.txt").
# * Modifica esa variable para añadirle el sufijo .bak (ej. datos.txt.bak).
# * Muestra por pantalla el mensaje: "Procesando el archivo..." sin saltar de línea (usa la opción -n de echo).
# * Tras un par de segundos (usa la orden sleep 2), imprime " [OK]" en la misma línea.
# * Finalmente, usa comillas simples para mostrar literalmente cómo se llama la variable que guarda el nombre del archivo (ej. "La variable usada es '$archivo'").

archivo="datos.txt"
archivo="$archivo.bak"

echo -n "Procesando el archivo..."

sleep 2

echo " [OK]"

echo 'La variable usada es $archivo'
