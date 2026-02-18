
#------------------------
# FILTROS BÁSICOS
#-------------------------------

# cat ~/.bashrc | more
# cat ~/.bashrc | less

#------------------------
# ORDENACIÓN
#-------------------------------

# Ordenación básica
cat datos.txt | sort

# Ordenación numérica
cat numeros.txt | sort -n

# Ordenación numérica por el tercer campo
cat numeros.txt | sort -n -k 3

# Ordenación numérica inversa por el tercer campo
cat numeros.txt | sort -n -r -k 3


#------------------------
# HEAD y TAIL
#-------------------------------

#Muestra las 10 primeras (o últimas) líneas
cat numeros.txt | head
cat numeros.txt | tail

#Muestra las 3 primeras (o últimas) líneas
cat numeros.txt | head -n 3
cat numeros.txt | tail -n 3

# muestra todas las líneas menos las últimas 20
cat filtros.sh | nl | head -n -20

# muestra todas las líneas desde la 5 en adelante
cat filtros.sh | nl | tail -n +5


#------------------------
# Contar las líneas: orden wc 
#-------------------------------
cat /etc/passwd | wc -l # cuenta el número de líneas



#------------------------
# Cortar columnas: orden cut 
#-------------------------------
echo "Holacaracolaaaa" | cut -c 1,3,5-9,12-
#Hlcaracaaaa

cat /etc/passwd | cut -d ":" -f 1,3
cat /etc/passwd | cut -d ":" -f1 | sort

#------------------------
# Traducir: orden tr 
#-------------------------------

echo "hola caracola" | tr "aeiou" "12345"
cat /etc/passwd | cut -d ":" -f 1,3 | tr ":" "\n"

echo "Hola    cara     cola"  | tr -s " " # "Hola cara cola"


