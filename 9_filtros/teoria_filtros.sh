
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

