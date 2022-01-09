### Añadir grupo local:
~~~
sudo groupadd nombreGrupo
~~~

---------------------------------
### Ver los grupos del sistema:
  ~~~
  cat /etc/group
  ~~~

---------------------------------
### Ver los grupos de tu usuario:
  ~~~
  groups
  ~~~

---------------------------------
### Añadir permisos root a un grupo:
* Editar fichero sudo
  ~~~
  sudo visudo
  ~~~
* Añadir debajo de %root la siguiente linea
  > %nombreGrupo ALL = NOPASSWD:ALL

---------------------------------
### Asociar un grupo o varios a un usuario:
  ~~~
  sudo usermod -aG <nombreGrupo1>,<nombreGrupo2>,...
  ~~~

---------------------------------
### Eliminar a un usuario de un grupo:
  ~~~
  sudo gpasswd -d nombreUsuario nombreGrupo
  ~~~
