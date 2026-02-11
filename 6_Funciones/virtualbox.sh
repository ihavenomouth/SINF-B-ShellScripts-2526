#!/bin/bash

# Virtualbox

# Crea un script que reciba uno o tres parámetros.
# Si no recibe ninguno, dos o más de tres mostrará un mensaje de error y terminará.

# if [ $# -eq 0 ] || [ $# -eq 2 ] || [ $# -gt 3 ];then
#   echo "error"
#   exit
# fi

#############################
# FUNCTIONS
##############################

function error_parametros(){
  echo "Error: Nº de parámetros incorrecto." 1>&2
  echo "Debe indicar 1 o 3 parámetros." 1>&2
  exit 1
}


#############################
# MAIN
##############################

[ $# -eq 0 ] && error_parametros
[ $# -eq 2 ] && error_parametros
[ $# -gt 3 ] && error_parametros

# Si llego aquí es porque hay uno o tres parámetros


# Si el primer parámetro es --help, se mostrará la ayuda y terminará.
if [ "$1" == "--help" ];then
  echo "Permite gestionar el cpuexecutioncap de una máquina virtual."
  echo
  echo "Uso: $0 --help|lista"
  echo "Uso: $0 limitar executioncap id_mv"
  echo
  echo "Parámetros:"
  echo "  --help        : muestra esta ayuda"
  echo "  lista         : muestra la lista de máquinas virtuales en ejecución"
  echo "  executioncap  : %máximo de tiempo de CPU que podrá usar la máquina virtual"
  echo "  id_mv         : identificador de la máquina virtual."
  echo
  echo "Ejemplo:"
  echo "$0 limitar 70 3d79ec34-5a0b-481c-8661-51f85d9db585" 
  exit 0
fi


# Si el primer parámetro es lista se ejecutará lo siguiente y terminará:
# vboxmanage list runningvms

if [ "$1" == "lista" ];then
  vboxmanage list runningvms
  exit 0
fi

# Si sólo se recibe un parámetro y no es ninguno de esos dos, se mostrará un mensaje de error y terminará.

if [ $# -eq 1 ];then
  echo "Error: el parámetro $1 no es correcto." 1>&2
  echo "Puede ejecutar $0 --help para mostrar la ayuda." 1>&2
  exit 2
fi


# Si se reciben tres parámetros, el primer parámetro tiene que ser limitar. En caso contrario se mostrará un mensaje de error y terminará.

if [ "$1" != "limitar" ];then
  echo "Error: el parámetro $1 no es correcto." 1>&2
  echo "Puede ejecutar $0 --help para mostrar la ayuda." 1>&2
  exit 2
fi


# Si se reciben tres parámetros y el primer parámetro es limitar, se ejecutará una orden que limite al número que se pasa como segundo parámetro el uso de la CPU que puede hacer la máquina virtual cuyo id se pasa como tercer parámetro.

# Seguro que hay 3 parámtros y que el primero es limitar
VBoxManage controlvm $3 cpuexecutioncap $2

# Por ejemplo:
# ./script limitar 70 3d79ec34-5a0b-481c-8661-51f85d9db585

# Ejecutará:
# VBoxManage controlvm 3d79ec34-5a0b-481c-8661-51f85d9db585 cpuexecutioncap 70