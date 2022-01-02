# Conceptos:

* Docker:
  > Herramienta que permite desplegar aplicaciones de forma fácil en una especie de caja de arena (contenedores).
* Imagenes: 
  > Planos o cimientos de la aplicación a desplegar.
* Contenedores:
  > Se crean a partir de imagenes y ejecutan la aplicación.
* Docker Daemon: 
  > Servicio encargado de toda la gestión, creación y ejecución de los contenedores, se ejecuta en el sistema del host.
* Docker Hub:
  > Registro de todas las imagenes, por defecto es el registro remoto.

-----------------------------------------
# Comandos útiles Docker:

* Listar imágenes del registro local:
  ~~~
  docker images
  ~~~
  
* Listar contenedores en ejecución
  ~~~
  docker ps
  ~~~
  
* Listar todos los contenedores, incluso los que no estén ejecutandose
  ~~~
  docker ps -a
  ~~~
 
* Obtener una imagen del registro remoto de Docker y guardarla en el sistema o registro local
  ~~~
  docker pull <imagen>
  ~~~
  > ***Nota:*** Se puede especificar la versión de la imagen: ***\<imagen>:\<version>***, por ejemplo: ***ubuntu:20.04***

* Ejecutar un contenedor basado en una imagen
  ~~~
  docker run <imagen>
  ~~~

* Ejectar un comando en un contenedor a ejecutar
  ~~~
  docker run <imagen> <comando>
  ~~~
  > ***Nota:*** Si la imagen no se encuentra en el registro local, se obtiene del registro remoto.\ Adicionalmente se pueden usar los siguientes flags útiles:\
  > ***--rm*** contenedor se elimina una vez finalice\
  > ***-d*** ejecuta el contenedor en background y mustra el id del contenedor\
  > ***-p \<puerto_host>:\<puerto_contenedor>*** vincula los puertos del contenedor a los del host\
  > ***-P*** vincula los puertos expuestos a puertos aleatorios del host\
  > ***--name \<nombre>*** da un nombre al contenedor\
  > Más opciones en [docker run](https://docs.docker.com/engine/reference/commandline/run/)
    
* Ejecutar consola (tty) en modo interactivo en un contenedor a ejecutar
  ~~~
  docker run -it <imagen> sh
  ~~~
  > ***Nota***: En vez de ***sh*** también podría ser ***bash*** o ***zsh***, si la imagen los soporta

* Ejecutar un comando en un contenedor ya ejecutado
  ~~~
  docker exec -it <imagen> <comando>
  ~~~

* Ejecutar consola (tty) en modo interactivo en un contenedor ya ejecutado
  ~~~
  docker exec -it <imagen> bash
  ~~~
  
* Eliminar contenedor
  ~~~
  docker rm <id_contenedor>
  ~~~
  
* Eliminar todos los contenedores que han finalizado
  ~~~
  docker rm $(docker ps -a -q -f status=exited)
  ~~~
  > ***Nota***: ***-q*** devuelve solo los IDs y ***-f*** filtra con una condición, en este caso ***status=exited***
  
  De forma alternativa también se puede usar:
  ~~~
  docker container prune
  ~~~
  
* Detener contenedor (recibe una señal ***SIGTERM*** y luego de un tiempo ***SIGKILL***)
  ~~~
  docker stop <id_contenedor>
  ~~~

* Ver puertos vinculados al contenedor
  ~~~
  docker port <id_contenedor>
  ~~~
  
* Construir una imagen a partir de un Dockerfile
  ~~~
  docker build <path>
  ~~~
  > ***Nota;*** El ***path*** suele ser el directorio actual, denotado por: ***.***

* Loguearse con cuenta de Docker para publicar imagenes
  ~~~
  docker login
  ~~~
  
* Publicar una imagen en la cuenta de Docker
  ~~~
  docker push <nombre_usuario>/<imagen>
  ~~~
  > ***Nota:*** Una vez publicada la imagen se puede obtener así:
  ~~~
  docker pull <nombre_usuario>/<imagen>
  ~~~
  
* Inspeccionar datos y metadatos de un contenedor
  ~~~
  docker inspect <id_contenedor>
  ~~~
  
------------------------------------------
# Dockerfile:
[documentación](https://docs.docker.com/engine/reference/builder/)

* Especificar la imagen base (la version es opcionak)
  > FROM \<imagen>:\<version>

* Espicificar un directorio de trabajo
  > WORKDIR \<path>

* Copiar un fichero o directorio a una ruta del contenedor, también puede usar ficheros o directorios de urls y ficheros comprimidos que seran descomprimidos en el contenedor
  > ADD \<host_path> \<contenedor_path>

* Copiar directorios y ficheros locales al contenedor (a diferencia de ADD solo sirve para copiar ficheros o directorios locales sin aplicar descompresión en ningun momento)
  > COPY \<host_path> \<contenedor_path>

* Ejecutar comandos para construir la imagen (dependencias)
  > RUN \<comando>

* Vincular un puerto
  > EXPOSE \<puerto>

* Ejecutar comandos al arrancar el contenedor
  > CMD ["\<comando>","\<argumento1>","\<argumento2>",...]

* Añadir detalles de autor (el correo va entre dimantes: <>)
  > MAINTAINER \<nombre> \<correo>
  
* Añadir metadatos (tanto el dato como el valor van entre comillas)
  > LABEL \<dato>=\<valor>\
  > Ejemplo: LABEL "web.nombre"="custom web"
