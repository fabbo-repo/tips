### Derminar modelo de dispositivo wifi por usb (tiene que estar conectado)
~~~
lsusb
~~~

----------------------------------------------------------------
### Drivers para Realtek 802.11 ac

* Actualizar repositorios y paquetes
~~~
sudo apt update && sudo apt -y upgrade
~~~

* Instalar dkms
~~~
sudo apt install dkms
~~~

* Descargar fichero ***realtek-rtl8814au-dkms*** en el enlace:
> https://http.kali.org/kali/pool/contrib/r/realtek-rtl8814au-dkms/realtek-rtl8814au-dkms_5.8.5.1~git20210730.824d1d2-0kali1_all.deb

* Instalarlo
~~~
sudo apt install realtek-rtl8814au-dkms_5.8.5.1~git20210730.824d1d2-0kali1_all.deb
~~~

* Descargar fichero ***realtek-rtl88xxau-dkms*** en el enlace:
> https://http.kali.org/kali/pool/contrib/r/realtek-rtl88xxau-dkms/realtek-rtl88xxau-dkms_5.6.4.2~git20210627.b8167e6-0kali1_all.deb

* Instalarlo
~~~
sudo apt install realtek-rtl88xxau-dkms_5.6.4.2~git20210627.b8167e6-0kali1_all.deb
~~~

------------------------------------------------------------------
### Otras distros:
> https://blog.abysm.org/2020/03/realtek-802-11ac-usb-wi-fi-linux-driver-installation/
