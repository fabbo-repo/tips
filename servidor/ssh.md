https://www.redeszone.net/tutoriales/servidores/servidor-openssh-linux-configuracion-maxima-seguridad/

https://www.solvetic.com/tutoriales/article/3991-como-crear-configurar-tunel-ssh-en-linux/

### Instalar servidor ssh:
* Instalar OpenSSH
~~~
sudo apt-get install openssh-server
~~~

* Editar configuración
~~~
sudo nano /etc/ssh/sshd_config
~~~

- Arrancar servidor:
~~~
sudo /etc/init.d/ssh start
~~~

* Parar servidor:
~~~
sudo /etc/init.d/ssh stop
~~~

* Reiniciar servidor:
~~~
sudo /etc/init.d/ssh restart
~~~

------------------------------------------------------------------------------------
### Cambiar puerto de ssh
* Abrir configuración
~~~
sudo nano /etc/ssh/sshd_config
~~~

* Ir a la línea **Port 22** y cambiar el número por otro

------------------------------------------------------------------------------------
### Para más seguridad:
https://www.redeszone.net/tutoriales/seguridad/servidor-ssh-comprobar-seguridad-proteger/

------------------------------------------------------------------------------------
### Comprobar conexiones:
* Inicios de sesion aceptadas:
~~~
sudo cat /var/log/auth* | grep Accepted | awk '{print $1 " " $2 "\t" $3 "\t" $11 "\t" $9 }'
~~~

* Intentos de inicio de sesión:
~~~
ps -Af | grep sshd: | grep @pts
~~~

* Conexiones ftp activas:
~~~
netstat -tan | grep \:21
~~~

* Conexiones ftp activas:
~~~
netstat -tan | grep \:22
~~~

------------------------------------------------------------------------------------
### Enjaular usuarios en sftp:
https://blog.desdelinux.net/transferir-archivos-mediante-sftp-y-jaulas-en-debian-y-en-ubuntu/
