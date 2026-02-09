#!/bin/bash

# Crea un script que haga lo siguiente:
# - Si no recibe ningún parámetro, mostrará la ayuda y terminará.
# - Si recibe más de un parámetro, mostrará la ayuda y terminará.
# - Si el primer parámetro es --help, mostrará la ayuda y terminará.
# - Si el primer parámetro es cal, mostrará el calendario y terminará.
# - Si el primer parámetro es date, mostrará la fecha y terminará.
# - En cualquier otro caso, mostrará la ayuda y terminará.

function ayuda(){
  echo "Una utilidad que muestra información sobre fechas y calendarios"
  echo
  echo "Uso: ejemplo.sh [PARAMETROS]"
  echo
  echo "Parámetros:"
  echo "   --help  : Muestra esta ayuda"
  echo "   cal     : Muestra un calendario del mes"
  echo "   dia     : Muestra la fecha actual"
  echo
  exit 0
}


[ $# -eq 0 ] && ayuda
[ $# -gt 1 ] && ayuda
[ "$1" == "--help" ] && ayuda
[ "$1" == "cal" ] && cal && exit 0
[ "$1" == "date" ] && date && exit 0
ayuda


