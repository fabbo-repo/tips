### Instalar y configurar fail2ban:
* Instalar fail2ban (banear IPs que hagan muchos intentos de conexión fallidos)
~~~
sudo apt-get install fail2ban
~~~

* Entrar en la configuración
~~~
sudo nano /etc/fail2ban/jail.local
~~~

* Añadir lo siguiente:
>	[ssh] \
>	enabled = true \
>	port = 1234 \
>	filter = sshd \
>	logpath = /var/log/auth.log \
>	maxretry = 3

* Iniciar fail2ban:
~~~
sudo /etc/init.d/fail2ban start
~~~

* Ver logs de conexión:
~~~
grep /var/log/sshd/var/log/auth.log | less
~~~

