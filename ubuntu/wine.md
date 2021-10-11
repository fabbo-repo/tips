### Instalar Wine:

* Habilitar la arquitectura de 32 bits
~~~
sudo dpkg --add-architecture i386
~~~

* Descargar repositorio de Wine
~~~
sudo wget -nc https://dl.winehq.org/wine-builds/winehq.key
~~~

* Agregar la clave de Wine
~~~
sudo apt-key add winehq.key
~~~

* Añadir los repositorios de Wine

> Ubuntu 20.04
~~~
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main'
~~~

> Ubuntu 19.10
~~~
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ eoan main'
~~~

> Ubuntu 18.04
~~~
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'
~~~

* Actualizar los paquetes:
~~~
sudo apt update
~~~

* Instalar Wine estable
~~~
sudo apt install --install-recommends winehq-stable
~~~

* Entrar en la configuración de Wine
~~~
sudo winecfg
~~~

* Dar en instalar (si se requiere intalar paquetes adicionales)

* Configurar Wine
