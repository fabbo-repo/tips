[Fuente](https://docker-curriculum.com/)

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
* Docker Compose:
  > Herramienta para crear y ejecutar múltiples contenedores Docker, recomendable para contenedores y servicios con dependencias
* Docker Swarm:
  > Clustering con Docker

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
  De forma alternativa:
  ~~~
  docker container ls
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
  > ***--net <nombre_red>*** lanzar contenedores en una red de docker\
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
  
* Listar redes de docker
  ~~~
  docker network ls
  ~~~

* Inspeccionar una red de docker
  ~~~
  docker network inspect <id_red>
  ~~~

* Crear una red *"bridge"* de docker (permite la comunicación entre contenedores de forma aislada)
  ~~~
  docker network create <nombre>
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

* Ejecutar comando al arrancar el contenedor (solo puede haber uno en el Dockerfile)
  > CMD ["\<comando>","\<argumento1>","\<argumento2>",...]

* Añadir detalles de autor (el correo va entre dimantes: <>)
  > MAINTAINER \<nombre> \<correo>
  
* Añadir metadatos (tanto el dato como el valor van entre comillas)
  > LABEL \<dato>=\<valor>\
  > Ejemplo: LABEL "web.nombre"="custom web"

----------------------------------------
# Docker Compose:

* Instalación con python:
  pip install docker-compose

* Lanzar los contenedores de un fichero ***.yml*** en background
  ~~~
  docker-compose up -d
  ~~~
  
* Destruir los contenedores:
  ~~~
  docker-compose down -v
  ~~~

* Ejecutar comando en contenedor
  ~~~
  docker-compose run <nombre_contenedor> <comando>
  ~~~
  ***Nota:*** Para acceder a la consola del contenedor, se puede usar el comando *bash*

* Ejemplo 1 de estructura:
  ~~~
  version: "3"                      # Version de la aplicación docker
  services:
    servicio1:                      # Nombre de uno de los servicios/contenedores
      image: <imagen>               # Nombre de la imagen del servicio 1
      container_name: servicio1     # Nombre del contenedor
      environment:                  # Especificar variables de entorno en el contenedor
        - VAR1=3                    # Variable de entorno valdrá 1 al ejecutar
        - VAR2                      # El valor de VAR2 se le asignará por consola
      env_file:                     # Se usa para pasar un ficher con variables de entorno
        - fichero.env               # Solo ficheros con extensión .env
      ports:
        - <puerto_host>:<puerto_contenedor>
      volumes:                      # Vincula directorio del host con el servicio/contenedor
        - <directorio_host>:<directorio_contenedor>
      restart: <tipo_reinicio>      # En la descripción se especifica sobre <top_reinicio>
    servicio2:
      image: <imagen>
      command: <comando>            # Comando a ejecutar una vez se lance el contenedor
      depends_on:                   # Se usa para indicar los servicios que 
        - servicio1                 # se deben ejecutar antes que este
    servicio3:
      build: <path>                 # Indica que el servicio3 utiliza un Dockerfile para
                                    # crear su imagen
  ~~~
  > \<tipo_reinicio> puede ser:
  > * "no" -> en ninguna circumstancia se reinicia el servidor
  > * always -> si el contenedor se deteniene por cualquier motivo, se reinicia
  > * on-failure -> se reinicia el contenedor si se detiene por un código de error
  > * unless-stopped -> siempre se reinicia el contenedor a no ser que lo detengamos manualmente
