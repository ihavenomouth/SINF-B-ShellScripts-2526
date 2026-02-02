#!/bin/bash

# Crea un shell script que se comporte de esta manera:
# Debe recibir al menos un parámetro, si no recibe parámetros mostrará un mensaje de error y terminará.
# Si el primer parámetro es --help, mostrará un mensaje de ayuda y terminará.
# Si el primer parámetro es info, se comprobará si existe un fichero llamado info.txt
# - Si el fichero existe, mostrará un mensaje de error y terminará.
# - Si el fichero no existe, lo creará con esta información:
#    * Usuario: <nombre del usuario actual>
#    * Máquina: <nombre de la máquina>
#    * Fecha: <fecha actual>
#    * Listado de ficheros:
#      ~~~~~~~~~~
#      ~~~~~~~~~~
#      ~~~~~~~~~~
#