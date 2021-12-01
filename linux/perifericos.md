### Desmontar una partición:
~~~
umount /dev/sdxy
~~~
*Nota*: ***x*** es la letra de la unidad e ***y*** es el número de la partición

### Desconectar el puerto USB:
~~~
udisks --detach /dev/sdx
~~~
*Nota*: Solo se especifica la unidad, ***x*** es la letra de dicha unidad

De forma equivalente:
~~~
udisksctl unmount --force -b /dev/sdxy
~~~
