# Usar docker sin 'sudo':

* Crear un grupo 'docker' (fallará si el grupo ya existe)
  ~~~
  sudo groupadd docker
  ~~~
  
* Agregar usuario actual al grupo 'docker'
  ~~~
  sudo gpasswd -a $USER docker
  ~~~
  
* Reiniciar o cerrar cesión y luego probar
  ~~~
  docker --version
  ~~~
