### Instalar y configurar Plex Media Server:
* Importar la clave GPG del repositorio Plex
~~~
curl https://downloads.plex.tv/plex-keys/PlexSign.key | sudo apt-key add -
~~~

* Agregar el repositorio Plex APT a la lista de repositorios
~~~
echo deb https://downloads.plex.tv/repo/deb public main | sudo tee /etc/apt/sources.list.d/plexmediaserver.list
~~~

* Instalar Plex Media Server
~~~
sudo apt install apt-transport-https 
sudo apt update 
sudo apt install plexmediaserver
~~~

* Comprobar estado de Plex
~~~
sudo systemctl status plexmediaserver
~~~

### En caso de que el firewall esté activado:
* Crear perfil de aplicación para Plex en UFW 
~~~
sudo nano /etc/ufw/applications.d/plexmediaserver
~~~

* Insertar lo siguiente:
> title=Plex Media Server (Standard) \
> description=The Plex Media Server \
> ports=32400/tcp|3005/tcp|5353/udp|8324/tcp|32410:32414/udp \
> title=Plex Media Server (DLNA) \
> description=The Plex Media Server (additional DLNA capability only) \
> ports=1900/udp|32469/tcp \
> title=Plex Media Server (Standard + DLNA) \
> description=The Plex Media Server (with additional DLNA capability) \
> ports=32400/tcp|3005/tcp|5353/udp|8324/tcp|32410:32414/udp|1900/udp|32469/tcp

* Actualizar la lista de perfiles
~~~
sudo ufw app update plexmediaserver
~~~

* Aplicar las nuevas reglas de firewall
~~~
sudo ufw allow plexmediaserver-all
~~~

* Verificar si las nuevas reglas de firewall se aplican con éxito
~~~
sudo ufw status verbose
~~~

------------------------------------------------------------------------------------
### Problemas al acceder a disco usb desde PLEX MEDIA SERVER:
~~~
sudo chmod -R 777 /media/tuusuario/
~~~
