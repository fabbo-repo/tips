### Montar sistema de archivos con sshfs:

* Crear el punto de montaje
  ~~~
  sudo mkdir /mnt/"nombre de directorio"
  ~~~
  > *Nota*: Adicionalmente pdoría ser *media* en vez de *mnt*

* Montar el directorio remoto
  ~~~
  sudo sshfs [-o <options>] <remote user>@<remote host>:/<path to remote directory> /mnt/<folder name>/
  ~~~

* Si se desea usar una clave de firma privada:
  ~~~
  sudo sshfs -o IdentityFile=/home/$USER/.ssh/id_rsa user@ip_remota:/home/user/ /mnt/"nombre de directorio"/
  ~~~
