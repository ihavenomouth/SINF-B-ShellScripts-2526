# Ejercicios de repaso:



## Ejercicio de saludo
Crea un script llamado saludo.sh que reciba dos parámetros: un nombre y un rol (profesor, alumno, administrador, etc.).
El script debe imprimir: "Hola [nombre], eres [rol]".
Debe mostrar cuántos argumentos ha recibido el usuario en total.
Debe imprimir un mensaje de despedida en una línea diferente.



## Ejercicio de calculadora de edad (Intermedio)

Crea un script llamado edad.sh que haga lo siguiente:
* Salude al usuario actual del sistema usando la variable de entorno $USER.
* Pida al usuario (mediante read) su año de nacimiento.
* Calcule cuántos años cumplirá el usuario en el año actual (puedes usar el año actual como una variable fija o investigar el comando `date +%Y`).
* Muestre el resultado con un mensaje claro.



## Ejercicio de simulación de copia de seguridad

Crea un script llamado simulabackup.sh que simule la creación de una copia de seguridad:
* Define una variable con el nombre de un archivo (ej. archivo="datos.txt").
* Modifica esa variable para añadirle el sufijo .bak (ej. datos.txt.bak).
* Muestra por pantalla el mensaje: "Procesando el archivo..." sin saltar de línea (usa la opción -n de echo).
* Tras un par de segundos (usa la orden sleep 2), imprime " [OK]" en la misma línea.
* Finalmente, usa comillas simples para mostrar literalmente cómo se llama la variable que guarda el nombre del archivo (ej. "La variable usada es '$archivo'").



## Ejercicio de copia de seguridad

Crea una copia del script llamado simulabackup.sh y modificala para la creación de una copia de seguridad:
* El script recibirá una extensión como primer parámetro (por ejemplo sh)
* Imprime un mensaje que indique la extensión que se va a usar, por ejemplo "Se va a realizar una copia de los ficheros sh" 
* Muestra por pantalla el mensaje: "Procesando el archivo backup.tar.gz..." sin saltar de línea (usa la opción -n de echo).
* Usa la orden tar para generar un fichero comprimido: `tar -czf backup.tar.gz *.$1`
* Tras un par de segundos (usa la orden sleep 2), imprime " [OK]" en la misma línea.
* Finalmente, usa comillas simples para mostrar "Se ha generado el fichero backup.tar.gz"
    
    
    