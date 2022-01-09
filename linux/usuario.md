# Añadir usuario local:
*
  ~~~
  sudo useradd <nombreUsuario> -m -s /bin/bash 
  ~~~
  > ***-m*** para crear las carpetas por defecto en home
*
  ~~~
  sudo passwd <nombreUsuario>
  ~~~
  o mejor:
  ~~~
  sudo adduser <nombreUsuario>
  ~~~

------------------------------------------------------------------------------------
# Cambiar nombre de usuario:
*
  ~~~
  sudo usermod -l <nombreUsuarioNuevo> <nombreUsuarioViejo>
  ~~~
  
------------------------------------------------------------------------------------
# Cambiar shell de un usuario:
*
  ~~~
  sudo usermod <nombreUsuario> --shell /bin/bash
  ~~~
------------------------------------------------------------------------------------
# Cambiar contraseña de un usuario:
*
  ~~~
  sudo passwd <nombreUsuario>
  ~~~

------------------------------------------------------------------------------------
# Cambiar de usuario:
*
  ~~~
  su - <nombreUsuario>
  ~~~

------------------------------------------------------------------------------------
# Eliminar usuario local:
*
  ~~~
  sudo userdel --remove <nombreUsuario>
  ~~~

------------------------------------------------------------------------------------
# Ver los usuarios del sistema:
*
  ~~~
  awk -F: '{ print $1}' /etc/passwd
  ~~~

------------------------------------------------------------------------------------
# Ver el hash de las contraseñas de los usuarios del sistema:
*
  ~~~
  sudo cat /etc/shadow
  ~~~

------------------------------------------------------------------------------------
# Añadir permisos root a un usuario:

* Editar fichero sudo
  ~~~
  sudo visudo
  ~~~
* Añadir debajo de root la siguiente linea
  ~~~
  <nombreUsuario> ALL=ALL
  ~~~
