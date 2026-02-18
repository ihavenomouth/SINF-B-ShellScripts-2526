#!/bin/bash

# shebang : Un comentario especial que indica qué intérprete debe usarse
# para ejecutar el shell script.

# ¿Qué es un shell script?
# Un archivo con órdenes que se ejecutan secuencialmente.

clear
ls
echo "Fecha del sistema"


# ------------------------
# COMENTARIOS
# ------------------------

# Los comentarios de varias líneas no existe en shell script
# Los comentarios de una línea comienzan por #

date # esto muestra la fecha del sistema


#------------------------------
# PERMISO DE EJECUCIÓN
#------------------------------

# Para poder ejecutar un shell script, debemos tener permisos de ejecución
# chmod u+x fichero

# Ahora podemos ejecutarlo simplemente con un 
# ./fichero

