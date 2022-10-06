# Docker Compose:

* Instalación con python:
  pip install docker-compose

* Lanzar los contenedores de un fichero ***.yml*** en background
  ~~~
  docker-compose up -d
  ~~~
  ***Nota:*** Si el contenedor ya se ha lanzado se puede usar la flag **--force-recreate**
* Destruir los contenedores:
  ~~~
  docker-compose down -v
  ~~~

* Ejecutar comando en contenedor
  ~~~
  docker-compose run <nombre_contenedor> <comando>
  ~~~
  ***Nota:*** Para acceder a la consola del contenedor, se puede usar el comando *bash*

* Obtener ID:
  ~~~
  docker-compose run app id
  ~~~

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
