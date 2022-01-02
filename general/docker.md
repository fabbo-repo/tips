# Conceptos:

* Docker:
  > Herramienta que permite desplegar aplicaciones de forma fácil en una especie de caja de arena (contenedores).

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

* Ejecutar un contenedor basado en una imagen
  ~~~
  docker run <imagen>
  ~~~

* Ejectar un comando en un contenedor a ejecutar
  ~~~
  docker run <imagen> <comando>
  ~~~
  > ***Nota:*** Si se desea que el contenedor se elimine una vez finalice, se debe usar la flag ***--rm***
  
* Ejecutar un comando en un contenedor ya ejecutado
  ~~~
  docker exec -it <imagen> <comando>
  ~~~
  
* Ejecutar consola (tty) en modo interactivo en un contenedor a ejecutar
  ~~~
  docker run -it <imagen> sh
  ~~~
  > ***Nota***: En vez de ***sh*** también podría ser ***bash*** o ***zsh***, si la imagen los soporta

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
