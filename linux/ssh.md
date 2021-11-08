### Obtener información de sesiones

* Uso del comando ***who***, se usa para mostrar que usuarios están conectados y las direcciones IP de origen.
  > Opciones: \
  > * Para mostrar el último arranque para los usuarios conectados, agregue el **-b -u**.

* Comando ***w***, brinda más información sobre los procesos en ejecución para cada usuario y sobre las conexiones SSH **inactivas**.

  | Opción   | Uso              |
  |----------|------------------|
  | -h, --no-header | Informa al terminal que no imprima el encabezado |
  | -u, --no-current |	Solicita al terminal que ignore el nombre de usuario, ya que muestra los procesos de los usuarios conectados y el tiempo de la CPU |
  | -s, --short | Le dice al terminal que imprima una salida acortada, excluyendo el tiempo de inicio de sesión, JCPU y PCPU |
  | -f, –from | Mostrar campo de nombre de equipo remoto |
  | -o, --old-style | Salida en formato antiguo |
  | --help	| Muestra las diversas opciones |
  | -V, --version | Muestra información sobre la versión |

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
