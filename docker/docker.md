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

## Imágenes:

* Listar imágenes del registro local:
  ~~~
  docker images
  ~~~
 
* Obtener una imagen del registro remoto de Docker y guardarla en el sistema o registro local
  ~~~
  docker pull <imagen>
  ~~~
  > ***Nota:*** Se puede especificar la versión de la imagen: ***\<imagen>:\<version>***, por ejemplo: ***ubuntu:20.04***
  
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
  docker push <docker_hub_id>/<nombre_repo>:<nombre_imagen>
  ~~~
  > ***Nota:*** Una vez publicada la imagen se puede obtener así:
  ~~~
  docker pull <docker_hub_id>/<nombre_imagen>
  ~~~
   
## Contenedores:

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
  > ***-v \<volumen_host>:\<volumen_contenedor>*** vincula los volumenes del contenedor a los del host\
  > ***-P*** vincula los puertos expuestos a puertos aleatorios del host\
  > ***--name \<nombre>*** da un nombre al contenedor\
  > ***--network <nombre_red>*** lanzar contenedores en una red de docker\
  > ***--ip <dir_ip>*** ip que se asigna a los contenedores, solo útil para redes de tipo *macvlan* conectadas al *gateway*\
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

* Inspeccionar datos y metadatos de un contenedor
  ~~~
  docker inspect <id_contenedor>
  ~~~

## Redes:

Un aspecto importante de las redes en docker es que utilizan el DNS configurado en el host (generalmente ubicado en /etc/resolv.conf). También en el DNS se incluyen dominios con los nombres de los contenedores conectados a una misma red docker.

Los tipos de redes/drivers utilizados en docker son:
  
  * ***bridge***: Actua como un switch en la interfaz de red creada por docker (docker0), para acceder a un contenedor en esta red se debe exponer el puerto al que se desea acceder.
  * ***macvlan***: Situa la red del contenedor dentro de la red del host. No es necesario exponer ningún puerto puesto que el contenedor se ejecuta como una aplicación más del host a efectos de red. La desventaja es que no ofrece aislamiento por lo que es menos segura. 

### Comandos:

* Listar redes de docker
  ~~~
  docker network ls
  ~~~
  > La columna "drivers" hace referencia a los 7 tipos de redes de docker (también denominado network type). La red por defecto es *bridge* y cada vez que se lanza un contenedor se puede ver su interfaz de red con ```ifconfig``` o ```ip address show```, hay que tener en cuenta que también aprecera la interfaz de red de *docker* la cual actuará como switch para las interfaces *bridge* para contenedores

* Listar interfaces de red de tipo *bride*:
  ~~~
  bridge link
  ~~~

* Inspeccionar una red de docker
  ~~~
  docker network inspect <nombre_red>
  ~~~
  > Sirve para obtener las direcciones IPs de los contenedores que utilizan dicha red

* Crear una red *bridge* de docker (permite la comunicación entre contenedores de forma aislada)
  ~~~
  docker network create <nombre>
  ~~~

* Crear una red *macvlan* pero que se conecte directamente al *gateway* obteniendo nuevas IPs diferentes a la del host
  ~~~
  docker network create <nombre> -d <tipo_de_red> --subnet <subnet> --gateway <ip_gateway> -o parent=<interfaz_red_host>
  ~~~
  > Se debe especificar la subnet (por ejemplo 10.7.4.0/24), la ip *gateway* (por ejemplo 10.7.4.1) y la interfaz de red del host (por ejemplo enp0s3)\
  > Este método no es recomendable puesto que no todas las redes lo soportan. Hace uso del puerto del switch/router al que está conectado el host para toda la comunicación. 
