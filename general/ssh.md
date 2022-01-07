# Ver conexiones ssh:

* Revisar sesiones
  ~~~
  sudo tail -n 100 /var/log/auth.log | grep session | grep ssh
  ~~~

* Revisar intentos de contraseñas
  ~~~
  sudo tail -n 100 /var/log/auth.log | grep password | grep ssh
  ~~~

-------------------------------------------------
# Ejemplos de uso:

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
# Conexión remota sin contraseña:

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
