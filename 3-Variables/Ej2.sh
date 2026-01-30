#!/bin/bash

# Crea un shell script que haga lo siguiente:
# - Borrará la pantalla
# - Pedirá al usuario que introduzca dos extensiones de archivo
# - Creará un fichero llamado listado.txt que contenga un listado largo
#   de los archivos cuya extensiones se indicó
# - Mostrará la fecha actual
# - Mostrará el mensaje "Proceso finalizado"

clear
echo -n "Introduzca la primera extensión: "
read ext1

echo -n "Introduzca la segunda extensión: "
read ext2


ls -l *.$ext1 *.$ext2 > listado.txt

date
echo "Proceso finalizado"