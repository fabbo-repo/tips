### Abrir servidor a red pública:
 https://www.nch.com.au/kb/es/10046.html \
 https://linuxhint.com/debian-static-ip-configuration/

------------------------------------------------------------------------------------
### Ver el gateway:
* Ejecutar el comando
~~~
netstat -r -n
~~~

* Escoger aquel que tenga como flag ***UG***

------------------------------------------------------------------------------------
### Establecer ip estática

https://support.cumulusnetworks.com/hc/en-us/articles/205200758-Configuring-etc-network-interfaces-with-a-bash-Script
https://askubuntu.com/questions/168687/wireless-configuration-using-etc-network-interfaces-documentation
https://linuxhint.com/debian_etc_network_interfaces/

* Identificar interfaz de red:
~~~
ifconfig -a
~~~

* Modificar ***interfaces***
~~~
sudo vim /etc/network/interfaces
~~~

------------------------------------------------------------------------------------
### Problemas dns:

https://www.tecmint.com/set-permanent-dns-nameservers-in-ubuntu-debian/

* Identificar problema ejecutando ping
~~~
ping -c 2 deb.debian.org
~~~

* Modificar ***resolv.conf***
~~~
sudo vim /etc/resolv.conf
~~~

* Comentar la siguiente línea
> search .

* Añadir la siguiente línea
nameserver 8.8.8.8

* Ejecutar ***ping*** otra vez, no es necesario reiniciar

------------------------------------------------------------------------------------
### Ejecutar script al iniciar equipo:

* Dar permisos de ejecución:
~~~
sudo chmod +x script.sh
~~~

* Copiarlo a /usr/local/bin
~~~
sudo cp script.sh /usr/local/bin
~~~

* Crear fichero .service:
>	[Unit] \
>	After=NetworkManager.service
>
>	[Service] \
>	Type=oneshot \
>	ExecStart=/usr/local/bin/reiniciar-red.sh
>	
>	[Install] \
>	WantedBy=multi-user.target

* Copiarlo a /etc/systemd/system
~~~
sudo cp script.service /etc/systemd/system
~~~

* Activar el servicio
~~~
sudo systemctl enable script
~~~

------------------------------------------------------------------------------------
Obtener IP pública estática:

1. Entrar en router Vodafone:
* En el navegador introduce accede a la dirección (http://192.168.0.1/)
* Pon el usuario y contraseña que vienen en la pegatina de debajo del router, si no te funciona, prueba utilizando como usuario y contraseña la palabra vodafone.


2. En el panel de configuración del router, habilita el "Modo experto" en la parte superior.


3. Sigue la siguiente ruta de navegación: Internet > DNS & DDNS > Habilitar DNS dinámico


4. En el apartado "Proveedor", seleccionar la opción no-ip.com. Hay que registrarte en esa página web para utilizar ese proveedor, es gratuito


5. Después de registrarte, dirígete a los siguientes apartados: 
	***Dynamic DNS > No-IP Hostnames > Create hostname***


6. En "Create hostname", rellena los siguientes campos:
* Hostname: pon un nombre para identificar el host
* Domain: introduce un nombre de dominio
* Record type: DNS Host (A)
* IPV4 Address: introduce tu IP, puedes conocerla en (cualesmiip.com)
* Dale a "Create Hostname" para guardar los cambios
* Una vez creado, cada 30 días nos llegará un correo electrónico para confirmar nuestro host, que lo seguimos utilizando


7. Ahora, volvemos al panel de nuestro router, acaba de rellenar los campos y pulsa aplicar:
* Proveedor: no-ip.com
* Nombre de dominio: el nombre de dominio que hayas elegido anteriormente
* Cuenta y contraseña: utiliza la cuenta y la contraseña con la que te registraste en no-ip.com


8. Si en "Estado DDNS" vemos que se encuentra activo, es que la configuración se ha realizado correctamente.

