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
