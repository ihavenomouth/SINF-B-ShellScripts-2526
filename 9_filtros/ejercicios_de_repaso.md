# Ejercicios de Repaso: Shell Scripting (Filtros, Tuberías y Bucles)

## 1. Contador de logins

**Objetivo:** Uso de `cut`, `sort` y redirecciones simples.
Crea un script que extraiga los nombres de usuario (los login) del fichero `/etc/passwd`. Ten en cuenta que en este fichero los campos se delimitan por el carácter `:`.

* El script debe obtener solo el primer campo (el nombre de usuario).
* El resultado debe guardarse ordenado alfabéticamente en un fichero llamado `usuarios_ordenados.txt`.

Modifica el script para que se comporte así:
  * El script recibe exactamente un parámetro. Si no es así mostrará un mensaje de error y terminará.
  * Si el primer parámetro es --help, mostrará la ayuda y terminará.
  * Si el primer parámetro es "contar" mostrará el número de usuarios del sistema. Apóyate en `wc -l`.
  * Si el primer parámetro es "uid" mostrará los UID de los usuarios ordenados numéricamente. El UID es el tercer parámetro en el fichero `/etc/passwd`.
  * En caso contrario se tomará el primer parámetro como el nombre del fichero en el que se guardarán los logins del sistema ordenados.



## 2. Monitor de espacio en disco

**Objetivo:** Uso de tuberías (`|`) y limitación de salida.
Haz un script que identifique el % de uso de las particiones en el sistema.

* Utiliza el comando `df -h`.
* Debes mostrar sólo aquellas líneas que comiencen por /dev/sd.
* De las líneas sólo nos interesa el dispositivo (por ejemplo /dev/sda1) y el % de uso.



## 3. Buscador de errores en Log

Crea un script que busque las palabras "session opened" en el fichero de logs llamado `/var/log/auth.log`.

Por ejemplo:
```sh
2026-02-17T22:17:01.709595+01:00 j-roy CRON[144683]: pam_unix(cron:session): session opened for user root(uid=0) by root(uid=0)
2026-02-18T10:46:36.333260+01:00 j-roy sddm-helper: pam_unix(sddm-greeter:session): session opened for user sddm(uid=116) by sddm(uid=0)
2026-02-18T10:46:36.382316+01:00 j-roy (systemd): pam_unix(systemd-user:session): session opened for user sddm(uid=116) by sddm(uid=0)
2026-02-18T10:46:43.143093+01:00 j-roy sddm-helper: pam_unix(sddm:session): session opened for user javier(uid=1000) by javier(uid=0)
2026-02-18T10:46:43.192176+01:00 j-roy (systemd): pam_unix(systemd-user:session): session opened for user javier(uid=1000) by javier(uid=0)
2026-02-18T10:47:01.324014+01:00 j-roy sudo: pam_unix(sudo:session): session opened for user root(uid=0) by javier(uid=1000)
2026-02-18T10:55:01.350720+01:00 j-roy CRON[6013]: pam_unix(cron:session): session opened for user root(uid=0) by root(uid=0)
2026-02-18T11:05:01.372732+01:00 j-roy CRON[6630]: pam_unix(cron:session): session opened for user root(uid=0) by root(uid=0)
2026-02-18T11:15:01.395713+01:00 j-roy CRON[7744]: pam_unix(cron:session): session opened for user root(uid=0) by root(uid=0)
```

De toda esa información sólo nos interesa la fecha y hora y la parte que indica el usuario involucrado. Pero sólo si el uid es mayor o igual que 100.
```sh
2026-02-18 10:46:43 javier(uid=1000)
2026-02-18 10:46:43 javier(uid=1000)
```


## 4. Generador de informes de directorio

**Objetivo:** Bucle `for` y procesamiento de columnas.
Escribe un script que recorra los elementos del directorio actual mediante la salida de `ls -l`.

* Para cada fichero, debe imprimir por pantalla: `"El fichero [NOMBRE] tiene un tamaño de [TAMAÑO] bytes"`.
* Para cada directorio, debe imprimir por pantalla: `"Directorio: [NOMBRE]"`.
* Utiliza `cut` para extraer la columna correspondiente al nombre y al tamaño de la salida del listado.
* Haz que al final aparezca el número de ficheros y directorios que hay y el total en bytes y megabytes que ocupan todos los ficheros.


## 5. Limpiador de formatos

**Objetivo:** Transformación de texto con `tr` y lectura línea a línea.
Imagina un fichero `datos.txt` con espacios múltiples e irregularidades que queremos procesar para convertirlo en un fichero csv.

```
Nombre          Edad   Departamento    Correo
-------------------------------------------------------------
Juan Perez        30      Ventas       juan@empresa.com
Maria Gomez       25     Marketing     maria@empresa.com
Luis Rodriguez    35        TI         luis@empresa.com
```

El script debe leerlo línea a línea  y realizar lo siguiente:
* Ignorar la primera y segunda línea porque son de cabecera
* Eliminar todos los espacios repetidos y sustituirlos por ","
* Convertir el nombre del empleado a mayúsculas
* Guardar el resultado en el fichero datos.csv
* Generar por pantalla las sentencias SQL necesarias para insertar esos registros en la base de datos de la empresa, por ejemplo:
  * INSERT INTO EMPLEADO(nombre, edad, departamento, email) VALUES('JUAN PEREZ', 30, 'Ventas', 'juan@empresa.com')


## 6. Clasificador de textos

**Objetivo:** Clasificar textos de manera automática usando un filtro bayesiano simplificado.

Crea una fichero llamado `palabras_comunes` que contenga palabras que no hay que tener en cuenta por ser poco significativas:
a
ante
cabe
bajo
con
contra
como
de
del
desde
en
entre
por
si
...
tener
haber
comer
ser
es
...
sí
no
hay
que
poco
mucho
...
el
lo
la
los
las
ellos
ellas
tú
él
nosotros
nosotras
vosotros
vosotras
ellos
ellas
...
tu
mi
su
mío
suyo
...
un
uno
una
unos
unas
otro
otra
otros
otras
...
dos
tres
cuatro
cinco
seis
siete
ocho
nueve
diez
...
primer
primera
segunda
segundo
tercera
tercer

A continuación crea un script llamado `preprocesado.sh` que haga lo siguiente:
  * Recibirá como único parámetro el nombre de un fichero de texto, por ejemplo `noticia1.txt`
  * Quitará todos los puntos, comas, dos puntos, paréntesis, exclamaciones e interrogaciones. Utiliza la orden `tr` para esto
  * Recorrerá el fichero palabra por palabra
  * Las convertirá en minúsculas y las comparará con las contenidas en el fichero `palabras_comunes`. Usa la orden `grep` para esto
  * Si no están en ese fichero, guárdala en un fichero con el mismo nombre que el que se recibió como parámetro añadiendo la palabra `procesado`. Por ejemplo como `noticia1.txt.procesado`




### Segunda parte

Crea un fichero llamado `política.palabras` y escribe en él una lista de palabras que consideres que están relacionadas con la política:
presidente
gobierno
moncloa
impuestos
política
...

Crea un fichero llamado `deporte.palabras` y escribe en él una lista de palabras que consideres que están relacionadas con el deporte:
pelota
balón
fútbol
portería
raqueta
tenista
deporte
...
Crea un fichero llamado `tecnología.palabras` y escribe en él una lista de palabras que consideres que están relacionadas con la tecnología:
informática
bit
byte
ordenador
javascript
html
algoritmo
...



A continuación crea un shell script que haga lo siguiente:
  * Recibirá como único parámetro el nombre de un fichero de texto
  * Creará las variables `politica=0`, `deporte=0` y `tecnologia=0`
  * Recorrerá el fichero palabra por palabra
  * Cada palabra la convertirá a minúsculas y mirará si está contenida en el fichero `política.palabras` y si es así incrementará el valor de la variable `politica`. Usa la orden `grep` para esto.
  * Si está contenida en el fichero `deporte.palabras`, incrementa la variable `deporte`
  * Si está contenida en el fichero `tecnología.palabras`, incrementa la variable `tecnología`
  * Si no está en ningún fichero, descarta la palabra sin hacer nada
  * Cuando ya no haya más palabras que procesar haz que se muestre el resultado ordenado: más arriba cuanto mayor sea la probabilidad de que pertenezca a una u otra categoría.

Ejemplo:
```
Resultado del análisis:
-----------------------
Deporte: 60%
Tecnología: 30%
Política: 10%
```


