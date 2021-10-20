### Instalar OpenSSH:

* Ejecutar Powersherll con permisos de admin

* Verificar si OpenSSH server y client están instalados
~~~
Get-WindowsCapability -Online | Where-Object Name -like 'OpenSSH*'
~~~
> Nota: si dice ***NotPresent*** significa que no está instalado

* Instalar OpenSSH client si no se ha instalado
~~~
Add-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0
~~~

* Instalar OpenSSH server si no se ha instalado
~~~
Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0
~~~
