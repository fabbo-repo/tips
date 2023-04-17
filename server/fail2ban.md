### Instalar y configurar fail2ban:
* Instalar fail2ban (banear IPs que hagan muchos intentos de conexión fallidos)
~~~
sudo apt install fail2ban
~~~

* Copiar el archivo ***.conf*** como ***.local*** para que se aplique la configuración
~~~
sudo cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local
~~~

* Crear con fail2ban una regla personalizada para SSH
~~~
sudo nano /etc/fail2ban/jail.d/sshjail.local
~~~

* Añadir lo siguiente:

>	[sshd] \
>	enabled = true \
>	port = 22 \
>	filter = sshd \
>	bantime = 4000 \
>	findtime = 600 \
>	logpath = /var/log/auth.log \
>	maxretry = 3

*Nota*: En ***port*** se debe poner el número del puerto en caso de que se haya modificado el valor por defecto en ***sshd.conf***.

* Reiniciar fail2ban:
~~~
sudo /etc/init.d/fail2ban restart
~~~

* Ver logs de conexión:
~~~
grep /var/log/sshd/var/log/auth.log | less
~~~

* Ver logs de fail2ban: 
~~~
grep /var/log/fail2ban.log | less
~~~
