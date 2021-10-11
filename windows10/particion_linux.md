### Eliminar partición linux desde windows 

* Ir a ***Crear y formatear particiones del disco duro***

* Dar en ***Eliminar volumen*** en las particiones donde esta instalado linux y reconocer la partición EFI

* Abrir el cmd

* Usar comando
~~~
diskpart
~~~

* Listar los discos y buscar el que tenga la partición EFI con el comando ***list disk***

* Seleccionar el disco con comando ***select disk n*** (n es el número del disco)

* Listar las particiones del disco y buscar la partición EFI con el comando ***list partition*** (Suele ser la segunda)

* Seleccionar la partición
~~~
select patition n 
~~~
***n*** es el número de la partición

* Ejecutar los comandos 
~~~
assign letter = y
~~~
Siempre que no haya una partición montada con la letra ***y***

~~~
exit
~~~

~~~
y;
~~~
letra usada en el comando ***assign letter***

~~~
cd efi
~~~

* Ver carpetas con los nombres de las distros linux eliminadas
~~~
dir
~~~

~~~
rd distroLinux
~~~
***distroLinux*** sera el nombre de las carpetas vistas a eliminar

* Comprobar que han sido eliminadas
~~~
dir
~~~

* Reiniciar pc
