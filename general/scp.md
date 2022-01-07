# Opciones del comando ***scp***:

| Opción   | Uso              | Notas          |
|----------|------------------|----------------|
| -C | Usar una compresión específica | No confundir con '-c' (cipher), que activa el procedimiento de cifrado |
| -p | Transferir los atributos de archivo al archivo de destino (permisos) | No confundir con el parámetro '-P', que activa el puerto de red |
| -r | Copiar los directorios de manera recursiva | - |
| -v | Mostrar la versión ampliada (verbose) | - |
| -q | Eliminar la salida (quiet) | - |
| -3 | Enviar los datos a través del sistema local (third party) | - |

----------------------------
# Ejemplos de uso:

* Copiar un archivo del sistema local al remoto
  ~~~
  scp archivo.txt usuario@example.com:/ruta/al/directorio
  ~~~
  > *Nota*: Se copia un archivo 'archivo.txt' desde el directorio actual del sistema local al host 'example.com'

* Copiar un archivo del sistema remoto al local
  ~~~
  scp usuario@example.com:/ruta/al/directorio/archivo.txt .
  ~~~

* Copiar varios archivos
  ~~~
  scp archivo-1.txt archivo-2.txt usuario@example.com:/ruta/al/directorio
  ~~~

* Copiar un directorio completo
  ~~~
  scp -r directorio usuario@example.com:/ruta/al/directorio
  ~~~
  > *Nota*: ***directorio*** hace referencia a la ruta del directorio a copiar
  
  Para archivos de mayor peso conviene usar compresión de archivos
  ~~~
  scp -C -r directorio usuario@example.com:/ruta/al/directorio
  ~~~

* Copiar un archivo entre dos sistemas remotos
  ~~~
  scp usuario@example.com:/ruta/al/otro/directorio/archivo.txt usuario@www.example.com:/ruta/al/otro/directorio/archivo
  ~~~
  > Para que el sistema local sea intermediario de la transferencia de archivos:
  ~~~
  scp -3 usuario@example.com:/ruta/al/directorio/archivo.txt usuario@www.example.com:/ruta/al/directorio/archivo
  ~~~
