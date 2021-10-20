### Instalar OpenSSH:

* Ejecutar Powersherll con permisos de administrador

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

-----------------------------
### Crear OpenSSH Server:

* Instalar OpenSSH server
~~~
Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0
~~~

* Abrir el powershell con permisos de administrador

* Iniciar servicio de ssh server
~~~
Start-Service sshd
~~~

* Ajustes opcionales (recomendado)
~~~
Set-Service -Name sshd -StartupType 'Automatic'
~~~

* Transmitir al firewall la regla del servicio
~~~
if (!(Get-NetFirewallRule -Name "OpenSSH-Server-In-TCP" -ErrorAction SilentlyContinue | Select-Object Name, Enabled)) {
    Write-Output "Firewall Rule 'OpenSSH-Server-In-TCP' does not exist, creating it..."
    New-NetFirewallRule -Name 'OpenSSH-Server-In-TCP' -DisplayName 'OpenSSH Server (sshd)' -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 22
} else {
    Write-Output "Firewall rule 'OpenSSH-Server-In-TCP' has been created and exists."
}
~~~

-----------------------------
### Conectar a OpenSSH Server:

* Abrir powershell

* Conectar a ip del servidor
~~~
ssh username@servername
~~~

-----------------------------
### Desinstalar a OpenSSH:

#### Opción 1:

* Abrir ***Settings***, luego ir a ***Apps > Apps & Features***.

* Ir a ***Optional Features***.

* En la lista, seleccionar ***OpenSSH Client*** o ***OpenSSH Server***.

* Seleccionar ***Uninstall***.

#### Opción 2:

* Abrir powershell

* Ejecutar para OpenSSH Client:
~~~
Remove-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0
~~~

* Ejecutar para OpenSSH Server:
~~~
Remove-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0
~~~
