[Fuente1](https://www.redeszone.net/tutoriales/servidores/servidor-openssh-linux-configuracion-maxima-seguridad/)

[Fuente2](https://www.solvetic.com/tutoriales/article/3991-como-crear-configurar-tunel-ssh-en-linux/)

[Fuente3](https://www.redeszone.net/tutoriales/seguridad/servidor-ssh-comprobar-seguridad-proteger/)

------------------------------------------------------------------------------------
# Instalar ssh en servidor:
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
# Modos de autenticación:

* Vía usuario y clave, en el archivo de configuración del servidor debe estar la siguiente línea
> PasswordAuthentication yes
***Nota:*** Con la siguiente línea no se permiten las conexiones con interacción de teclado
> ChallengeResponseAuthentication no

* Vía clave pública SSH, debe estar la siguiente línea en la configuración
> PubkeyAuthentication yes
  Adicionalmente, en el cliente se deben crear las claves públicas, en el caso de RSA de 4096b se debe ejecutar el siguiente comando:
  ~~~
  ssh-keygen -t rsa -b 4096
  ~~~
 Para posteriormente guardar la clave pública en **/home/$USER/ssh/id_rsa** y poner una contraseña a la componente privada (de esta forma, pedirá una contraseña al utilizar la clave privada).\
 Una vez creada, se envia la clave pública al servidor con el siguiente comando
 ~~~
 ssh-copy-id <usuario>@<ip_servidor>
 ~~~
 Opcionalmente se puede modificar la siguiente línea en la configuración del servidor para evitar escribir usuario y contraseña
 > PasswordAuthentication no


------------------------------------------------------------------------------------
### Cambiar puerto de ssh
* Abrir configuración
~~~
sudo nano /etc/ssh/sshd_config
~~~

* Ir a la línea **Port 22** y cambiar el número por otro

------------------------------------------------------------------------------------
# Extra seguridad:
* En el fichero de configuración del servidor **/etc/ssh/sshd_config**, se pueden cambiar opciones extras \
  1- **LoginGraceTime**: Establece el tiempo necesario para introducir la contraseña \
  2- **MaxAuthTries**: Número de intentos permitidos al introducir la contraseña antes de desconectarnos \
  3- **MaxStartups**: Número de logins simultáneos desde una IP, evita parcialmente la fuerza bruta \
  4- **AllowUsers**: lista blanca de usuarios. Permite configurar los usuarios que podrán conectarse \
  5- **DenyUsers**: lista negra. Los usuarios que tengamos aquí no podrán conectarse, y el resto sí \
  6- **AllowGroups/DenyGroups**: igual que las anteriores pero con grupos de usuarios

* Ejemplo:
  > Port 22445 \
  > PermitRootLogin no \
  > LoginGraceTime 30 \
  > MaxAuthTries 3 \
  > MaxStartups 3 \
  > AllowUsers user1 user2 \
  > DenyUsers user3 user4

* Configurar algoritmos de intercambio de claves, el cifrado simétrico y la configuración del HMAC de comprobación de integridad, se recomienda los siguientes ajustes:
> KexAlgorithms curve25519-sha256@libssh.org,ecdh-sha2-nistp521,ecdh-sha2-nistp384,ecdh-sha2-nistp256,diffie-hellman-group-exchange-sha256\
> Ciphers chacha20-poly1305@openssh.com,aes256-gcm@openssh.com,aes128-gcm@openssh.com,aes256-ctr,aes192-ctr,aes128-ctr\
> MACs hmac-sha2-512-etm@openssh.com,hmac-sha2-256-etm@openssh.com,umac-128-etm@openssh.com,hmac-sha2-512,hmac-sha2-256,umac-128@openssh.com

*Nota*: Puede que clientes antiguos de no sean compatibles con estas configuraciones

* Crear nuevas claves de RSA o DSA por unas con mayor longitud de bits. Se deben poner en el fichero de configuración (o sustituir las anteriores), remendación de RSA con 4096 bits o superior. 
  * Ejemplo de configuración:
  > HostKey /etc/ssh/ssh_host_ed25519_key \
  > HostKey /etc/ssh/ssh_host_rsa_key \
  > HostKey /etc/ssh/ssh_host_ecdsa_key
  * Generar unas claves RSA de 4096 bits nuevas:
  ~~~
  ssh-keygen -f /etc/ssh/ssh_host_rsa_key -t rsa -b 4096
  ~~~
  * Generar nuevas claves ECDSA (con máxima longitud de 512 bits) o ED25519:
  ~~~
  ssh-keygen -f /etc/ssh/ssh_host_ecdsa_key -t ecdsa -b 521
  ~~~
  ~~~
  ssh-keygen -f /etc/ssh/ssh_host_ed25519_key -t ed25519
  ~~~

------------------------------------------------------------------------------------
# Comprobar conexiones:
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
