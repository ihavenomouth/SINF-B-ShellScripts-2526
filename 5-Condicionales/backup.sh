#!

# Crea una copia del script llamado simulabackup.sh y modificala para la creación de una copia de seguridad:
# * El script recibirá una extensión como primer parámetro (por ejemplo sh)
# * Si no se recibe exactamente un parámetro, muestra un mensaje de error y termina.
# * Si el primer parámetro es --help muestra un mensaje de ayuda y termina.
# * Imprime un mensaje que indique la extensión que se va a usar, por ejemplo "Se va a realizar una copia de los ficheros sh" 
# * Muestra por pantalla el mensaje: "Procesando el archivo backup.tar.gz..." sin saltar de línea (usa la opción -n de echo).
# * Usa la orden tar para generar un fichero comprimido: `tar -czf backup.tar.gz *.$1`
# * Tras un par de segundos (usa la orden sleep 2), imprime " [OK]" en la misma línea.
# * Finalmente, usa comillas simples para mostrar "Se ha generado el fichero backup.tar.gz"

if [ $# -ne 1 ];then
  echo "Debe indicar una extensión como primer parámetro." 1>&2
  exit 1
fi

# Si llego aquí es que hay un primer parámetro

if [ "$1" == "--help" ];then
  echo "Crea un fichero de copia de seguridad comprimida"
  echo
  echo "Uso: $0 extensión"
  echo
  echo "Parámetros:"
  echo "   extensión : los ficheros que se van a incluir en la copia"
  echo
  echo "El fichero de copia de seguridad se llamará backup.tar.gz"

  exit 0
fi

# Si llego aquí es que hay un primer parámetro y no es --help

echo "Se va a realizar una copia de los ficheros $1"
echo -n "Procesando el archivo backup.tar.gz..."

tar -czf backup.tar.gz *.$1

sleep 2
echo " [OK]"
echo 'Se ha generado el fichero backup.tar.gz'