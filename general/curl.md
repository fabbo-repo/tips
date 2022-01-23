[Fuente](https://www-hostinger-es.cdn.ampproject.org/v/s/www.hostinger.es/tutoriales/comando-curl/amp?amp_gsa=1&amp_js_v=a6&usqp=mq331AQKKAFQArABIIACAw%3D%3D#amp_tf=De%20%251%24s&aoh=16412410570540&referrer=https%3A%2F%2Fwww.google.com&ampshare=https%3A%2F%2Fwww.hostinger.es%2Ftutoriales%2Fcomando-curl)

------------------------------------------------
# Definiciones:

* **curl**: permite verificar la conectividad a las URL y y transferir datos.
* **Protocolos compatibles:**
  * HTTP y HTTPS
  * FTP y FTPS
  * IMAP e IMAPS
  * POP3 y POP3S
  * SMB y SMBS
  * SFTP
  * SCP
  * TELNET
  * GOPHER
  * LDAP y LDAPS
  * SMTP y SMTPS

-------------------------------------------------
# Mostrar contenido de una página:
* 
  ~~~
  curl <URL>
  ~~~~

--------------------------------------------------
#  Descargar archivos desde una ubicación remota

* Con la flag ***-O*** se guarda el archivo en el directorio actual con el nombre original.
  ~~~
  curl -O <URL>/<fichero>
  ~~~
* Con la flag ***-o*** se especifica un nombre de archivo o ubicación diferente.
  ~~~
  curl -o <nombre_nuevo> <URL>/<fichero>
  ~~~
* Renaudar descarga incompleta con flag ***-C***
  ~~~
  curl -C - -O <URL>/<fichero>
  ~~~
* Usar URLSs de un fichero con ***xargs***.
  ~~~
  xargs -n 1 curl -O < <fichero>.txt
  ~~~
* Con autenticación en un servidor proxy:
  ~~~
  curl -x  <URL_Proxy>:<Puerto_Proxy> -U <usuario>:<contraseña> -O <URL>/<fichero>
  ~~~
--------------------------------------------------
# Uso en HTTP:
* Mostrar cabeaza HTTP:
  ~~~
  curl -I <URL>
  ~~~

* Solicitud GET HTTP:
  ~~~
  curl <URL>
  ~~~

* Solicitud GET HTTP:
  ~~~
  curl –data "text=..." <URL>
  ~~~
