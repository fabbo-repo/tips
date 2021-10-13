### Para acceder a carpeta compartida desde Linux a Windows
* Instalar samba y paquetes extras
~~~
sudo apt-get install samba samba-common smbclient winbind cifs-utils
~~~

* Abrir configuración samba
~~~
sudo nano /etc/samba/smb.conf
~~~

* Buscar la siguiente linea y cambiar por el grupo de trabajo
> workgroup = WORKGROUP

* Buscar la siguiente línea y quitar el ***;*** (si no está la línea, la agregamos)
> ; name resolver order = lmhosts hosts wins bcast
	
* Editar configuración nsswitch
~~~
sudo nano /etc/nsswitch.conf
~~~

* Buscar la siguiente línea
> hosts: files mdns4_minimal [NOTFOUND=return] dns mdns4  

y cambiarla por

> hosts: files mdns4_minimal [NOTFOUND=return] wins dns mdns4

* Reiniciar samba y winbind:
~~~
sudo /etc/init.d/winbind restart
sudo /etc/init.d/samba restart
~~~

------------------------------------------------------------------------------------
### Montar carpeta compartida automáticamente:
* Instalar smbfs
~~~
sudo apt install cif-utils
~~~

* Crear carpeta donde se va a montar
~~~
sudo mkdir /media/CarpetaCompartida
~~~

* Modificar el archivo ***fstab***
~~~
sudo nano /etc/fstab
~~~

* Añadir siguiente línea al final:
> //IP_SERVIDOR/carp_compartida   /media/carp_compartida  cifs   username=user,password=pass,noexec,user,rw,nounix,iocharset=utf8   0    0

* Comprobar que todo funciona correctamente:
~~~
sudo mount -a
~~~
