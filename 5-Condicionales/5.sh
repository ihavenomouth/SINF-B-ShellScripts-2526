Crea un shell script que compruebe que recibe un primer parámetro. 
Si no recibe ningún parámetro mostrará la ayuda y terminará.
Si el primer parámetro es --help mostrará la ayuda y terminará.
En otro caso, tratará el primer parámtro como comentario y ejecutará lo siguiente:

git add .
git commit -m "[comentario]"
git push

Haz que se compruebe en cada paso que todo terminó correctamente, en caso contrario mostrará un mensaje explicando qué orden ha fallado y terminará.

Si todo ha ido bien mostrará un mensaje de despedida alegre: (˶ᵔ ᵕ ᵔ˶)