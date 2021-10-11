### Instalar y configurar servidor SAMBA (Ubuntu)

* Instalar samba
~~~
sudo apt install samba
~~~

* Modificar configuracion de samba
~~~
sudo nano /etc/samba/smb.conf
~~~

* Bajar hasta el apartado ***Share Definitions*** y añadir:
> [nombre de fichero a compartir] \
> path = /.../CarpetaCompartida \
> writeable=yes \
> browseable=yes \
> create mask=0777 \
> directory mask=0777 \
> public=no

* Añadir usuario a servidor samba:
~~~
sudo smbpasswd -a nombreUsuario
~~~

* Reiniciar servidor samba
~~~
sudo service smbd restart
~~~

* Permitir samba a través del firewall
~~~
sudo ufw allow samba
~~~

------------------------------------------------------------------------------------
### Conectarse a la carpeta compartida por Windows

* Click derecho en Red en el Explorador de Windows y seleccionar ***Conectar a unidad de red***

* Poner en Carpeta: ***\\IP del servidor samba\nombre de fichero a compartir***

* Rellenar con usuario y contraseña ya creados anteriormente

------------------------------------------------------------------------------------
### Puertos que usa samba: 

* 445(tcp/udp)
* 139(tcp)
* 137,138(udp)***

------------------------------------------------------------------------------------
### Reiniciar samba:
~~~
sudo systemctl restart nmbd
~~~

------------------------------------------------------------------------------------
### Ver estado de samba:
~~~
sudo systemctl status nmbd
~~~
Si hay un ícono verde es que está funcionando correctamente

------------------------------------------------------------------------------------
### Ver lista de usuarios samba:
~~~
pdbedit -L
~~~


