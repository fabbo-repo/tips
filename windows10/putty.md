#### Crear tunel SSH

* Crear y guardar una puerta de entrada SSH de servidor (sshFABBOgateway):
> Host Name (or IP address): -
> Port: 22

* En Saved Session, seleccionar Load.

* Configurar el túnel SSH:

  1- Ir a ***Connection > SSH > Tunnels*** y cambiar
     > Source port: 8080 \
     > Destination: IP_PUBLICA:8080

    *Nota*: En ***IP_PUBLICA*** va la dirección ip pública de tu red/router

  2- Abre el túnel SSH, pulsando el botón ***Add*** y luego el botón ***Open***, para conectar con la puerta SSH.

    *Nota*: Mientras que dejes la terminal SSH abierta, todo el tráfico del ‘Source Port’ de tu localhost será enviado a “Destination”. Si el puerto destino provee un servicio web, puedes abrir una pestaña en el navegador y visitar http://127.0.0.1:8080 (en este ejemplo).
