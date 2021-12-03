### Instalar sshfs:

* Instalar WinFPS:
https://github.com/billziss-gh/winfsp \
*Nota*: Seleccionar versión ***stable***

* Instalar Sshfs:
https://github.com/billziss-gh/sshfs-win \
*Nota*: Seleccionar versión ***stable***

-------------------------------------------
### Montar unidad remota con Sshfs:

* Ir al explorador de archivos al apartado de ***Este Equipo***

* Seleccionar en el panel superior la opción de ***Conectar a una unidad de red***

* En la ruta se debe añadir un comando con la sintaxis:
~~~
\\sshfs[.option]\<remote user>@<remote host>[!port][\path]
~~~

*Nota*: En ***options*** se pueden usar las siguientes: \
  1- **sshfs.r** conecta al directorio del usuario *root* \
  2- **sshfs.k** mapea el el directorio *home* del usuario y usa una clave ssh en la ruta ***"usuario_local"/.ssh/id_rsa*** \
  3- **sshfs.kr** igual que la opción 2 pero con el usuario *root* \
 
 
