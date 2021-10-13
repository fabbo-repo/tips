### Cambiar fondo de sesion:
* Instalar la libreria libglib2.0-dev-bin
~~~
sudo apt install libglib2.0-dev-bin
~~~

* Descargar script de cambio de fondo
~~~
wget github.com/thiggy01/change-gdm-background/raw/master/change-gdm-background
~~~

* Otorgar permisos de ejecución
~~~
chmod +x change-gdm-background
~~~

* Ejecutar el script con el path de la imagen
~~~
sudo ./change-gdm-background /path/to/image
~~~

-------------------------------------------------------------------------------------
### Para restaurar el login:
~~~
sudo ./change-gdm-background --restore
~~~
