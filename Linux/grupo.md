#### Añadir grupo local:
~~~
sudo groupadd nombreGrupo
~~~

#### Ver los grupos del sistema:
~~~
cat /etc/group
~~~

#### Ver los grupos de tu usuario:
~~~
groups
~~~

#### Añadir permisos root a un grupo:
* Editar fichero sudo
~~~
sudo visudo
~~~
* Añadir debajo de %root la siguiente linea
> %nombreGrupo ALL = NOPASSWD:ALL

#### Añadir un grupo a un usuario:
~~~
sudo usermod -aG nombreGrupo
~~~

#### Eliminar a un usuario de un grupo:
~~~
sudo gpasswd -d nombreUsuario nombreGrupo
~~~
