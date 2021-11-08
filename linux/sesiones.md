### Obtener información de sesiones

* Uso del comando ***who***, se usa para mostrar que usuarios están conectados y las direcciones IP de origen.
  > Opciones: \
  > * Para mostrar el último arranque para los usuarios conectados, agregue el **-b -u**.

* Comando ***w***, brinda más información sobre los procesos en ejecución para cada usuario y sobre las conexiones SSH **inactivas**.

  | Opción   | Uso              |
  |----------|------------------|
  | -h, --no-header | Informa al terminal que no imprima el encabezado |
  | -u, --no-current | Solicita al terminal que ignore el nombre de usuario, ya que muestra los procesos de los usuarios conectados y el tiempo de la CPU |
  | -s, --short | Le dice al terminal que imprima una salida acortada, excluyendo el tiempo de inicio de sesión, JCPU y PCPU |
  | -f, –from | Mostrar campo de nombre de equipo remoto |
  | -o, --old-style | Salida en formato antiguo |
  | --help | Muestra las diversas opciones |
  | -V, --version | Muestra información sobre la versión |
  
* Comando ***last***, muestra la lista de los últimos usuarios que iniciaron sesión, por defecto usa el fichero **/var/log/wtmp**
  > Para obtener las sesiones **activas**: \
  > ~~~
  > last | grep still
  > ~~~
  | Opción   | Uso              |
  |----------|------------------|
  | -a, --hostlast | Muestra el nombre de host en la última columna. |
  | -d, --dns | Linux almacena el nombre de host y la dirección IP de todos los hosts remotos. Este parámetro convierte la IP en un nombre de host |
  | -f, --file | Informa al último comando para usar un archivo designado que no sea /var/log/wtmp |
  | -F, --fulltimes | Último mensaje para imprimir todas las fechas y horas de inicio y cierre de sesión |
  | -i, --ip | Similar a --dns, pero muestra el número de IP |
  | -n, --limit <número> | Número de líneas a mostrar |
  
