# Instalar y configurar actualizaciones de seguridad del sistema:
[Fuente](https://wiki.debian.org/UnattendedUpgrades)

* Instalar "unattended upgrades"
  ~~~
  sudo apt install unattended-upgrades
  ~~~
  
* Habilitar actualizaciones automáticas
  ~~~
  sudo dpkg-reconfigure --priority=low unnattended-upgrades
  ~~~
  > Presionar la opción "Yes" en el menu que se muestra al ejecutar el comando

* Verificar que el archivo ***/etc/apt/apt.conf.d/20auto-upgrades*** contiene las siguientes líneas
  > APT::Periodic::Update-Package-Lists "1";\
  > APT::Periodic::Unattended-Upgrade "1";

* Realizar una prueba de actualización
  ~~~
  sudo unattended-upgrade --dry-run --debug
  ~~~
  
-----------------------------------------------------
# Actualizaciones de Docker:
Revisar WatchTower
