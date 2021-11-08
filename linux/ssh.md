### Ver conexiones ssh:

* Comando ***netstat***, mostrar todas las conexiones de red, interfaces de red, tablas de enrutamiento y más.
  > Ver conexiones ssh establecidas
  > ~~~
  > netstat | grep ssh
  > ~~~
  > Para mostrar todas las conexiones
  > ~~~
  > netstat -a | grep ssh
  > ~~~

* Comando ***ss***, muestra información del socket, uso similar a netstat.

-------------------------------------------------
### Ejemplos de uso:

* Conectarse a servidor remoto
~~~
ssh ip_servidor
~~~

* Conectarse a servidor remoto en un puerto específico
~~~
ssh ip_servidor -p555
~~~

* Conectarse a servidor remoto con un usuario específico, ***root*** por ejemplo:
~~~
ssh root@ip_servidor
~~~

* Ejecutar comandos en servidor
~~~
ssh ip_servidor 'echo "Test comando entrecomillado"; date'
~~~

---------------------------------------------
### Conexión remota sin contraseña:

* Acceder como usuario ***root***
~~~
sudo su
~~~

* Entrar en el directorio **/root/.ssh**
~~~
cd .ssh
~~~

* Generar una clave pública (presionar ***enter*** en todas las opciones, ningún password)
~~~
ssh-keygen -t rsa
~~~

* Copiamr la clave al servidor remoto que queremos conectarnos sin contraseña
~~~
ssh-copy-id -i id_rsa.pub root@ip_servidor
~~~

* Verificar el acceso remoto sin contraseña
~~~
ssh ip_servidor
~~~
