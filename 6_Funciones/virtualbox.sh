Virtualbox

Crea un script que reciba uno o tres parámetros.

Si no recibe ninguno, dos o más de tres mostrará un mensaje de error y terminará.

Si el primer parámetro es --help, se mostrará la ayuda y terminará.

Si el primer parámetro es lista se ejecutará lo siguiente y terminará:
vboxmanage list runningvms

Si sólo se recibe un parámetro y no es ninguno de esos dos, se mostrará un mensaje de error y terminará.

Si se reciben tres parámetros, el primer parámetro tiene que ser limitar. En caso contrario se mostrará un mensaje de error y terminará.

Si se reciben tres parámetros y el primer parámetro es limitar, se ejecutará una orden que limite al número que se pasa como segundo parámetro el uso de la CPU que puede hacer la máquina virtual cuyo id se pasa como tercer parámetro.

Por ejemplo:
./script limitar 70 3d79ec34-5a0b-481c-8661-51f85d9db585

Ejecutará:
VBoxManage controlvm 3d79ec34-5a0b-481c-8661-51f85d9db585 cpuexecutioncap 70