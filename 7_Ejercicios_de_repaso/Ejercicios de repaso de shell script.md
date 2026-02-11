# Ejercicios de scripts

*Nota:* Este fichero está hecho con Markdown. Usa un visualizador de estos archivos para verlos.


## Ejercicio: esRoot
Crea un script llamado `esRoot` que no reciba parámetros. Su función es verificar los privilegios del usuario que lo ejecuta. Utiliza la variable de entorno `$EUID`. En sistemas Linux, el usuario `root` siempre tiene el ID `0`.
  * Si el usuario es `root`, debe mostrar "root".
  * Si no es root, debe mostrar el contenido de la varaible de entorno $USER




  
## Ejercicio: esNum
Crea un script llamado `esNum` que contenga este código:
```sh
[[ "$1" =~ ^-?[0-9]+(\.[0-9]+)?$ ]] && exit 0
exit 1
```

No te preocupes por el código, no es necesairo que lo entiendas ahora mismo porque sólo vamos a usar ese script como apoyo. Si quieres saber algo más de él, debes saber que usa una [expresión regular](https://es.wikipedia.org/wiki/Expresi%C3%B3n_regular).

Si llamas al script podrás comprobar con `$?` que cuando se le pasa un número como parámetro sale con un código 0, si no es un número sale con un código 1.


```sh
$ ./esNum 12
$ echo $?
0

$ ./esNum -12.56
$ echo $?
0

$ ./esNum "tres"
$ echo $?
1

$ ./esNum "1-rere2"
$ echo $?
1
```





## Ejercicio: valor absoluto  
Escribe un script llamado `abs` que devuelva el valor absoluto del número que recibe.  
  * Comprueba que recibe exactamente un parámetro. Si no recibe parámetros o recibe más de un parámetro, haz que se muestre una ayuda y termine.
  * La ayuda se mostrará también si el primer parámetro es --help.
  * Si recibe una cadena de caracteres haz que devuelva el número 0. Apóyate en el script `esNum` que creaste antes.
  * Devuelve el valor absoluto del número que se ha pasado como primer parámetro.


```sh
$ ./abs 1
1

$ ./abs -134
134

$ ./abs "gato"
Error: Debe indicar un número como parámetro
```




## Ejercicio: máquina expendedora
Una máquina expendedora de Pepsi utiliza un sistema curioso para funcionar, utiliza un shell script que pregunta al suario su nombre y el número de bebidas que quiere y le muestra el coste de la operación. Cada bebida costará 1.55 €.
Sin embargo han añadido un _easter egg_ si el nombre es "Sara" simplementee responderá "Gracias, Sara. ¡Siguiente!".

```sh
$ ./expendedora
Introduce tu nombre: Ana
Nº de bebidas: 4
Total: 6.20 €
Gracias Ana. Siguiente cliente, por favor.

$ ./expendedora
Introduce tu nombre: Sara
Gracias, Sara. ¡Siguiente!

$ ./expendedora
Introduce tu nombre: Juan
Nº de bebidas: 2
Total: 3.10 €
Gracias Juan. Siguiente cliente, por favor.

$ ./expendedora
Introduce tu nombre: Garrulo
Nº de bebidas: trece
Lo siento, trece no es un número correcto.
```




## Ejercicio: edad
Crea un script llamado `edad` que reciba el año de nacimiento de una persona y calcule su edad, además le indicará cuántos años faltan para que cumpla 50. Evidentemente si la persona tiene 55 años le indicará los años que hace que cumplió 50.

*Nota:* para saber el año actual se puede ejecutar `date +%Y`


```sh
$ ./edad
Debe añadir su edad como parámetro.

$ ./edad 2000
Tienes 26 años.
Cumplirás los 50 dentro de 24 años.

$ ./edad 1970
Tienes 56 años.
Cumpliste los 50 hace 6 años.
```




## Ejercicio: control de gastos
Crea un script llamado `controlgastos` que reciba uno o dos parámetros.  
  * Si recibe más parámetros mostrará un mensaje de error y terminará.
  * Si no recibe parámetros mostrará un mensaje de error y terminará.
  * Si recibe un único parámetro y es `--help` mostrará un mensaje de ayuda y terminará.
  * Si recibe un único parámetro y es `lista` mostrará el contenido del fichero `gastos.txt`. Si el fichero no existe mostrará un mensaje indicándolo.
  * Si recibe un único parámetro y es `borrar` eliminará el fichero `gastos.txt`.
  * Si recibe un único parámetro y no es `lista` ni `--help` ni `borrar` mostrará un mensaje de error y terminará.
  * Si recibe dos parámetros comprobará que el primero es un número, si no es así mostrará un mensaje de error y terminará.
  * En caso contrario guardará los datos al final de un fichero llamado `gastos.txt`. Si este fichero no existe, lo creará.

*Nota:* Si quieres que quede tabulado perfectamente puedes usar `printf "%7d" 245` en lugar de `echo "245"`. Eso añade los espacios necesarios para que el `245` ocupe 7 caracteres, es decir, imprimirá `    245`.


```sh
$ ./controlgastos
Error: número de parámetros incorrecto. Use --help para ver la ayuda.

$ ./controlgastos gato zorro
Error: el primer parámetro debe ser un número.

$ ./controlgastos 12 "móvil"
$ ./controlgastos 160 "compra en el supermercado"
$ ./controlgastos 55 "electricidad"

$ ./controlgastos lista
   Gastos | Concepto
---------------------------------
     12 € | móvil
    160 € | compra en el supermercado
     55 € | electricidad

$ ./controlgastos borrar
$ ./controlgastos lista
No hay datos que mostrar.
```


## Ejercicio: avisador de batería

Crea un script llamado `bateria` que informe sobre la alimentación del equipo utilizando algunos de los ficheros del directorio `/sys`.
  * Lee el fichero `/sys/class/power_supply/AC/online`
  * Si el valor es 1, debe mostrar: "Conectado a la red eléctrica" y terminar.
  * Si el valor es 0:
    * Se debe leer el fichero `/sys/class/power_supply/BAT0/status`
      * Si indica Full, debe mostrarse "Batería cargada completamente" y terminar.
    * Se debe leer el fichero `/sys/class/power_supply/BAT0/capacity`
      * Si la capacidad es inferior a 25, hay que mostrar: "Batería baja: [valor]%".
      * Si es superior, hay que mostrar: "Funcionando con batería: [valor]%".

```sh
$ ./estado_energia
Conectado a la red eléctrica

$ ./estado_energia
Batería baja: 15%
```


