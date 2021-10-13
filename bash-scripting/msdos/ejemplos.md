### Ejemplos de código

* Otros scripts en: 
[http://foro.elhacker.net/scripting/libreria_de_funciones_y_scripts_batch_actualizado_260507-t163184.0.html]


~~~
goto :com1
@echo off
cls & dir & cd
start cmd /k dir & cd 
@pause
~~~

~~~
@echo off
start notepad
start calc
start mspaint
start control
@pause
~~~

~~~
@echo off
net user
hostname
systeminfo
systeminfo %hostname% | find "K"
@pause
~~~

~~~
@echo off
echo ruta: %HOMEPATH%
echo caracteristicas : %ALLUSERSPROFILE%
echo %CD%
rem PUSHD \
echo %CD%
rem POPD %HOMEPATH%
echo %CD%
rem POPD 
echo %CD%
echo.
@pause
~~~

~~~
@echo off
@rem Probando shift
echo batch: %0
echo primer argumento: %1
echo segundo argumento: %2
echo tercer argumento: %3
echo.
@rem borramos a %2
shift /2
echo %0 %1 %2 %3
@pause
~~~

~~~
@echo off
@rem Conocer sistema operativo
set SISTEMA=Windows_NT
IF %OS% EQU %SISTEMA%  (
  echo Usas Windows
  systeminfo
) ELSE (
  echo Estas en un SO distinto a Windows
)
@pause
~~~

~~~
@echo off
echo Argumentos leidos: %*
for %%n in (%*) do @echo %%n
@pause
~~~

~~~
@echo off 
title Hacer media de dos numeros 
set/p num1=Cual es el primer numero? 
set/p num2=Cual es el segundo numero? 
set/a media= (%num1% + %num2%) / 2 
echo. 
echo La media es %media% 
pause >nul 
exit 
~~~

~~~
@echo off 
title Division de dos numeros 
set/p uno=Escriba el numerador 

:denominador 
set/p dos=Escriba el denominador 

if %dos%==0 (goto nosepuede) else (goto dividir) 

:nosepuede 
echo El denominador no puede ser cero. 
goto denominador 

:dividir 
set/a tres=%uno%/%dos% 
echo El resultado de %uno%/%dos% es %tres% 
pause>nul 
exit
~~~

~~~
@echo off 
CD 
pause>nul 
CD C:Windowssystem32 
CD 
pause>nul 
CD .. 
CD 
pause>nul 
CD.. 
CD 
pause>nul 
exit
~~~

~~~
@echo off
echo Presiona Enter para ejecutar JAR
pause > null
java -jar C:\Users\Uriel\Documents\Programas\Ejemplos\Binario01.jar
~~~

~~~
@echo off
echo Presiona Entera para ejecutar el programa
pause > null
python C:\Users\Uriel\Documents\Programas\Python\RegistroInventario.py
~~~

~~~
@echo off
Title Programa no. 15 (Uso de for var in (lista) do echo var)
color 4f
echo Presiona Enter para continuar...
pause > null
for %%x in (%*) do echo %%x
~~~

~~~
@echo off
echo Ruta al archivo: %~f1
echo Disco: %~d1
echo Solo ruta: %~p1
echo Nombre: %~n1
echo Extension: %~x1
echo Ruta Corta: %~s1
echo Atributos: %~a1
echo Fecha: %~t1
echo Tamaño: %~z1
echo Enter para salir
pause > null
~~~

~~~
@echo off
Title Programando en MSDos
echo.
echo -------------------------------
echo Directorio Actual: %CD%
echo Fecha: %DATE%
echo Hora: %TIME%
echo Numero Aleatorio: %RANDOM%
echo.
echo ------------------------------
echo Enter para salir
pause > null
~~~

~~~
@echo off
echo Cual es tu edad?
SET /P m=
IF %m% GEQ 18 (
echo ERES MAYOR DE EDAD
) ELSE (
echo NO ERES MAYOR DE EDAD
)
@pause
~~~

~~~
@echo off
color 4f
rem declaro variables
set var=Hola este es un mensaje
set edad=13
Title %var%
echo %var%
IF %edad% GEQ 18 (
echo SI
) ELSE (
echo NO
)
echo Enter para continuar
pause >null
~~~

~~~
@echo off&call:main&goto:EOF
 
:suma
set /A res=%1 + %2
echo %res%
goto:EOF
 
:resta
set /A res=%1 - %2
echo %res%
goto:EOF
 
:multiplica
set /A res=%1 * %2
echo %res%
goto:EOF
 
:main
set /P arg=Escribe 2 numeros separados por un espacio 
echo %arg%
echo su suma es:
call:suma %arg%
 
echo su resta es:
call:resta %arg%
 
echo su producto es:
call:multiplica %arg%
 
goto:EOF
~~~

~~~
@echo off
if "%1"=="/?" goto AYUDA
if "%1"=="" goto FIN
echo %*
goto FIN

:AYUDA
  echo.
  echo Este comando repite la frase que usted escriba
  echo - Sintaxis:
  echo       repite [ /? ^| frase]
  echo.
:FIN
~~~

~~~
@echo off
FOR %%f  IN (*) DO @echo %%f
@pause
~~~

~~~
@echo off
@rem saber is existe Java
title Java Batch Compiler V 2.0
echo.
echo Java Batch Compiler V 2.0
echo.
start note.txt
:mainmenu
cls
echo.
echo Java Batch Compiler V 2.0
color 0A
echo.
echo Elije una opcion:
echo.
echo 1 Compile .java file
echo.
echo 2 Run Java file
echo.
echo 3 Check JDK
echo.
echo 4 Exit
echo.
set/p option=">>"
if %option%==1 goto :search
if %option%==2 goto :runfile
if %option%==3 goto :checkjdk
if %option%==4 goto :closeprogram
:search
cls
echo.
echo Java Batch Compiler V 2.0
color 0C
echo.
set /p commnd=Write File name:
goto :action
:action
if exist %command% echo Compiling Project...
else goto :error
goto :compile
echo.
 
:compile
javac *.java
goto :complete
 
:complete
echo.
echo the file was created successfully
echo.
set /p retrn=Return to mainmenu?(use command r)
if %retrn%==r goto :mainmenu
 
:error
echo File Not Found...
 
:checkjdk
cls
color 09
set /p version=Write your JDK version:
if JDK%version% echo "Tienes JDK instalado" 
else echo "NO tienes el JDK instalado"
set /p ret=Return to mainmenu?(use command r)
if %ret%==r goto :mainmenu
 
:closeprogram
exit
 
:runfile
cls
color 0B
echo Jrunner V 2.0
echo.
title Jrunner V 2.0
echo.
set /p file2run=Write File to run:
echo.
if exist *.class goto :run 
else echo not found
 
:run
cls
echo Running Program...
echo.
java %file2run%
echo.
set /p retrn=Return to mainmenu?(use command r)
echo.
if %retrn%==r goto :mainmenu
pause>nul
~~~

~~~
@echo off 
title Nombre y apellidos 
set/p nombre=Cual es tu nombre? 
set/p apellido=Cual es tu primer apellido? 
set/p apellido2=Cual es tu segundo apellido? 
echo. 
echo Tu nombre completo es %nombre% %apellido% %apellido2% 
pause >nul 
exit
~~~

~~~
@echo off
title Prueba de bat en java
rem para hacer backup
rem mysqldump -uroot -p agenda > respaldo.sql
echo ...respaldo hecho
echo Presiona una tecla
pause > nul
~~~

~~~
@echo off
Title Programando en Batch
cls
color 1f
set cad1=Ejemplo de programa 
set cad2=Ejecutando macro externo
echo %cad1%
@echo off
echo %cad2%
rem ejecuta el macro programa2.bat
call programa2 
@pause
~~~

~~~
@echo off
rem ejemplo: copiar el directorio en un archivo *.txt
dir > todos.txt
echo Listo direccion de el directorio copiado
@pause
~~~

~~~
@echo off
rem esto es un comentario
Title Programando en Batch Windows
color 3f
echo Java: %java_home%
@echo off
echo Groovy: %groovy_home%
@echo off
echo Ceylon: %ceylon_home%
@echo off
echo Scala: %scala_home%
@echo off
echo Python %python_home%
@echo off
echo ClassPath: %classpath%
@pause
~~~

~~~
@echo off
rem este programa es un ejemplo
Title Ejemplo de programa Batch
color 4f
set cadena=Fernando
echo Hola usuario
@echo off 
echo Te encuentras en 
dir
@echo off 
date
@echo off
time
echo Hola %cadena%
@pause
~~~

~~~
@echo off
Title Programa no. 7
echo Parametro tomado es: %1
echo Tu nombre:
set /P nom=
echo Hola %nom%
@pause
~~~

~~~
@echo off
Title Programa no. 6
echo Ruta al archivo: %~f1%
echo Disco: %~d1
echo Solo ruta: %~p1
echo Nombre: %~n1
echo Extension: %~x1
echo Ruta Corta: %~s1
echo Atributos: %~a1
echo Fecha: %~t1
echo Tamaño: %~z1
@pause
~~~

~~~
@echo off
Title Programacion Batch... uso de shift /1
color 1f
echo Programa no. 5
rem se invoca program5 algo otra otra
echo %0 %1 %2 %3
shift /1
echo %0 %1 %2 %3
pause
~~~

~~~
@echo off
rem Envio de correo usando Blat
set para="carraro.fernando@gmail.com"
set remitente="carraro.ariel@gmail.com"
set smtp="smtp.gmail.com"
set asunto="Esto es una prueba"
set mensaje="Debes practicar mas"
set adjunto="prueba.txt"
blat - %para% %remitente% %smtp% %asunto% %mensaje% %adjunto%
echo Envio...
@pause
~~~

~~~
@echo off
:inicio
cls
rem En este primer comando, filtro la salida de "ipconfig" para que se guarde
rem en el archivo "prueba" solo los nombres de las tarjetas de red del equipo
ipconfig /all | find "Adaptador Ethernet" > prueba

rem Ahora preparo un archivo auxiliar llamado "prueba2". Es necesario poner los
rem 2 puntos del pricipio separados por espacios
echo . . TARJETAS DE RED DE ESTE EQUIPO: > prueba2
echo . . =============================== >>prueba2

rem ahora con el comando for filtro las lineas del archivo "prueba" y las 
rem guardo sin el caracter ":" en el archivo "prueba2"
for /f "delims=:" %%i in (prueba) do @echo %%i >> prueba2

rem Ahora cojo la segunda palabra, y el resto de linea, de cada linea del 
rem archivo "prueba2", para sacar por pantalla los nombres de las tarjetas
rem de red del equipo
for /f "tokens=2,*" %%i in (prueba2) do @echo %%j

rem ahora borro los archivos auxiliares "prueba" y "prueba2"
del prueba
del prueba2

echo .
echo En que tarjeta de red quieres trabajar:
set /p tarjeta=

cls
echo Quieres poner IP dinámica o estatica:
echo 1.- Dinamica
echo 2.- Estatica
set /p opcion=
if %opcion% == 1 goto dinamica
if %opcion% == 2 goto estatica

goto inicio

:dinamica
cls
netsh interface ip set address name="%tarjeta%" source=dhcp
netsh interface ip set dns "%tarjeta%" source=dhcp
goto fin

:estatica
cls
echo Dirección IP (p.ej: 192.168.1.23)
set /p ip=
echo Mascara de red (p.ej: 255.255.255.0)
set /p mascara=
echo Puerta de enlace (p.ej: 192.168.1.1)
set /p gateway=
echo Servidor DNS primario (p.ej: 80.58.0.33)
set /p dns1=
echo Servidor DNS secundario (p.ej: 80.58.61.254)
set /p dns2=

netsh interface ip set address name="%tarjeta%" source=static %ip% %mascara% 

%gateway% 1
netsh interface ip set dns "%tarjeta%" static %dns1%
netsh interface ip add dns name="%tarjeta%" addr=%dns2%

:fin
~~~

~~~
@ECHO OFF
wget -c -S -r http://download.mozilla.org/?product=firefox-4.0&os=win&lang=es-ES
echo continuar ...
pause > nul
~~~

~~~
@echo off
:menu1
cls
echo Elige un comando para ejecutar:
echo ================ MENU1 ====================
echo 1.-  Abre filtro AC3 (si está instalado) 
echo 2.-  Acerca de Windows (Ver la versión de Windows) 
echo 3.-  Actualizaciones automáticas
echo 4.-  Añadir o quitar programas 
echo 5.-  Administrador de orígenes de datos de ODBC 
echo 6.-  Ayuda y soporte
echo 7.-  Medios de almacenamiento extraibles 
echo 8.-  Asistente de accesibilidad 
echo 9.-  Asistente de cámaras y escáneres 
echo 10.- Asistente de configuración de redes 
echo 11.- Asistente de copia de seguridad o restauración 
echo 12.- Asistente de conexión Internet 
echo 13.- Asistente de transferencia de definiciones y de ficheros 
echo 14.- Asistente de transferencia de ficheros a través de Bluetooth 
echo 15.- Asistente para añadir hardware
echo 16.- Siguientes comandos...
echo fin.- Salir

set /p opcion=%1

if %opcion%==1 ac3filter.cpl 
if %opcion%==2 winver 
if %opcion%==3 wuaucpl.cpl 
if %opcion%==4 appwiz.cpl 
if %opcion%==5 odbccp32.cpl 
if %opcion%==6 msinfo32 
if %opcion%==7 ntmsmgr.msc 
if %opcion%==8 accwiz 
if %opcion%==9 wiaacmgr 
if %opcion%==10 netsetup.cpl 
if %opcion%==11 ntbackup 
if %opcion%==12 inetwiz 
if %opcion%==13 migwiz 
if %opcion%==14 fsquirt 
if %opcion%==15 hdwwiz.cpl 
if %opcion%==16 goto menu2
if %opcion%==fin goto fin

goto menu1

:menu2

cls

echo ================ MENU2 ====================
echo 17.- Calculadora 
echo 18.- Centro de seguridad de Windows 
echo 19.- Certificados
echo 20.- Cliente Telnet 
echo 21.- Configuración del protocolo de Internet (información de DNS ) 
echo 22.- Configuración de protocolo de Internet (Todas las conexiones ) 
echo 23.- Configuración de protocolo de Internet (ver DNS ) 
echo 24.- Configuración de protocolo de Internet (ver todo) 
echo 25.- Configuración de protocolo de Internet (Modificar DHCP Class ID) 
echo 26.- Configuración IP
echo 27.- Conjunto de políticas resultante (XP Prof) 
echo 28.- Cuentas de usuario
echo 29.- Controladores de juegos 
echo 30.- Definiciones de seguridad local 
echo 31.- Desfragmentador de disco 
echo 32.- Siguientes comandos
echo 33.- Anteriores comandos
echo fin.- Salir

set /p opcion=%1

if %opcion%==17 calc 
if %opcion%==18 wscui.cpl 
if %opcion%==19 certmgr.msc 
if %opcion%==20 telnet 
if %opcion%==21 ipconfig /flushdns 
if %opcion%==22 ipconfig /release 
if %opcion%==23 ipconfig /displaydns 
if %opcion%==24 ipconfig /all 
if %opcion%==25 ipconfig /setclassid 
if %opcion%==26 ipconfig 
if %opcion%==27 rsop.msc 
if %opcion%==28 nusrmgr.cpl 
if %opcion%==29 joy.cpl 
if %opcion%==30 secpol.msc 
if %opcion%==31 dfrg.msc 
if %opcion%==32 goto menu3
if %opcion%==33 goto menu1
if %opcion%==fin goto fin

goto menu2

:menu3

cls

echo ================ MENU3 ====================
echo 34.- Dejar de utilizar Windows 
echo 35.- Editor de carácter privado
echo 36.- Editor de configuración de sistema 
echo 37.- Editor de registro 
echo 38.- Apagar Windows 
echo 39.- Explorador de Windows 
echo 40.- Herramienta de diagnóstico de Direct X 
echo 41.- Herramienta de importación de Libreta de direcciones 
echo 42.- Herramienta para quitar software malicioso de Microsoft Windows 
echo 43.- Herramienta administrativas
echo 44.- Firewall de Windows 
echo 45.- Fuentes
echo 46.- Gestión de computadores 
echo 47.- Gestión de discos 
echo 48.- Gestor de dispositivos 
echo 49.- Siguientes comandos
echo 50.- Anteriores comandos
echo fin.- Salir

set /p opcion=%1

if %opcion%==34 logoff 
if %opcion%==35 eudcedit 
if %opcion%==36 sysedit 
if %opcion%==37 regedit 
if %opcion%==38 shutdown 
if %opcion%==39 explorer 
if %opcion%==40 dxdiag 
if %opcion%==41 wabmig 
if %opcion%==42 mrt 
if %opcion%==43 control admintools 
if %opcion%==44 firewall.cpl 
if %opcion%==45 fonts 
if %opcion%==46 compmgmt.msc 
if %opcion%==47 diskmgmt.msc 
if %opcion%==48 devmgmt.msc 
if %opcion%==49 goto menu4
if %opcion%==50 goto menu2
if %opcion%==fin goto fin

goto menu3

:menu4

cls

echo ================ MENU4 ====================
echo 51.- Gestor de objectos
echo 52.- Gestor de particiones de disco
echo 53.- Gestor de tareas de Windows 
echo 54.- Gestor de utilidades 
echo 55.- Gestor de verificación de controladores 
echo 56.- HyperTerminal
echo 57.- Iexpress Wizard 
echo 58.- Impresoras y faxes 
echo 59.- Infra-estructura de gestión de Windows 
echo 60.- Iniciar Windows Update
echo 61.- Elementos a sincronizar 
echo 62.- Internet Explorer 
echo 63.- Introducción a Windows XP 
echo 64.- Juego de cartas Copas 
echo 65.- Juego de cartas FreeCell 
echo 66.- Siguientes comandos
echo 67.- Anteriores comandos
echo fin.- Salir

set /p opcion=%1

if %opcion%==51 Gestor de objectos = packager 
if %opcion%==52 Gestor de particiones de disco = diskpart 
if %opcion%==53 Gestor de tareas de Windows = taskmgr 
if %opcion%==54 Gestor de utilidades = utilman 
if %opcion%==55 Gestor de verificación de controladores = verifier 
if %opcion%==56 HyperTerminal = hypertrm 
if %opcion%==57 Iexpress Wizard = iexpress 
if %opcion%==58 Impresoras y faxes = control printers 
if %opcion%==59 Infra-estructura de gestión de Windows = wmimgmt.msc 
if %opcion%==60 Iniciar Windows Update = wupdmgr 
if %opcion%==61 Elementos a sincronizar = mobsync 
if %opcion%==62 Internet Explorer = iexplore 
if %opcion%==63 Introducción a Windows XP = tourstart 
if %opcion%==64 Juego de cartas Copas= mshearts 
if %opcion%==65 Juego de cartas FreeCell = freecell 
if %opcion%==66 goto menu5
if %opcion%==67 goto menu3
if %opcion%==fin goto fin

goto menu4

:menu5

cls

echo ================ MENU5 ====================
echo 68.- Juego de cartas Spider Solitare
echo 69.- Juego del Buscaminas
echo 70.- Conexión a escritorio remoto
echo 71.- Conexión de red
echo 72.- Limpieza de disco 
echo 73.- Linea de comandos 
echo 74.- Lista telefónica 
echo 75.- Libro de direcciones 
echo 76.- Mapa de caracteres 
echo 77.- Marcador telefónico 
echo 78.- Microsoft Access (si está instalado) 
echo 79.- Microsoft Chat
echo 80.- Microsoft Excel (si está instalado) 
echo 81.- Microsoft Frontpage (si está instalado) 
echo 82.- Microsoft Movie Maker
echo 83.- Siguientes comandos
echo 84.- Anteriores comandos
echo fin.- Salir

set /p opcion=%1

if %opcion%==68 spider 
if %opcion%==69 winmine 
if %opcion%==70 mstsc 
if %opcion%==71 control netconnections 
if %opcion%==72 cleanmgr 
if %opcion%==73 cmd 
if %opcion%==74 rasphone 
if %opcion%==75 wab 
if %opcion%==76 charmap 
if %opcion%==77 dialer 
if %opcion%==78 access.cpl 
if %opcion%==79 winchat 
if %opcion%==80 excel 
if %opcion%==81 frontpg 
if %opcion%==82 moviemk 
if %opcion%==83 goto menu6
if %opcion%==84 goto menu4
if %opcion%==fin goto fin

goto menu5

:menu6

cls

echo ================ MENU6 ====================
echo 85.-  Microsoft Paint 
echo 86.-  Microsoft Powerpoint (si está instalado) 
echo 87.-  Microsoft Word (si está instalado) 
echo 88.-  Nero (si está instalado)
echo 89.-  Netmeeting 
echo 90.-  Notepad 
echo 91.-  Nview Desktop Manager (si está instalado)
echo 92.-  Opciones de accesibilidad
echo 93.-  Opciones de carpetas 
echo 94.-  Opciones regionales y de idioma
echo 95.-  Outlook Express
echo 96.-  Panel de control 
echo 97.-  Panel de control Direct X (si está instalado)
echo 98.-  Panel de control Java (si está instalado) 
echo 99.-  Paint
echo 100.- Siguientes comandos
echo 101.- Anteriores comandos
echo fin.- Salir

set /p opcion=%1

if %opcion%==85 Microsoft Paint = mspaint 
if %opcion%==86 Microsoft Powerpoint (si está instalado) = powerpnt 
if %opcion%==87 Microsoft Word (si está instalado) = winword 
if %opcion%==88 Nero (si está instalado) = nero 
if %opcion%==89 Netmeeting = conf 
if %opcion%==90 Notepad = notepad 
if %opcion%==91 Nview Desktop Manager (si está instalado) = nvtuicpl.cpl 
if %opcion%==92 Opciones de accesibilidad = access.cpl 
if %opcion%==93 Opciones de carpetas = control folders 
if %opcion%==94 Opciones regionales y de idioma = intl.cpl 
if %opcion%==95 Outlook Express = msimn 
if %opcion%==96 Panel de control = control 
if %opcion%==97 Panel de control Direct X (si está instalado) = directx.cpl 
if %opcion%==98 Panel de control Java (si está instalado) = jpicpl32.cpl 
if %opcion%==99 Paint = pbrush 
if %opcion%==100 goto menu7 
if %opcion%==101 goto menu5
if %opcion%==fin goto fin

goto menu6

:menu7

cls

echo ================ MENU7 ====================
echo 102.- Recurso DDE 
echo 103.- Impresoras  
echo 104.- Carpetas compartidas  
echo 105.- Solicitudes del operador de medios de almacenamiento extraibles 
echo 106.- Rendimiento 
echo 107.- Rendimiento  
echo 108.- Opciones de telefonía y el Modem 
echo 109.- Pinball para Windows 
echo 110.- Política de grupo (XP Prof) 
echo 111.- Configuración de energía  
echo 112.- Findfast 
echo 113.- Propiedades de visualización 
echo 114.- Propiedades de internet 
echo 115.- Propiedades de fecha y hora 
echo 116.- Propiedades de contraseñas
echo 117.- Siguientes comandos
echo 118.- Anteriores comandos
echo fin.- Salir

set /p opcion=%1

if %opcion%==102 ddeshare 
if %opcion%==103 printers 
if %opcion%==104 fsmgmt.msc 
if %opcion%==105 ntmsoprq.msc 
if %opcion%==106 perfmon 
if %opcion%==107 perfmon.msc 
if %opcion%==108 telephon.cpl 
if %opcion%==109 pinball 
if %opcion%==110 gpedit.msc 
if %opcion%==111 powercfg.cpl 
if %opcion%==112 findfast.cpl 
if %opcion%==113 control color 
if %opcion%==114 inetcpl.cpl 
if %opcion%==115 timedate.cpl 
if %opcion%==116 password.cpl 
if %opcion%==117 goto menu8
if %opcion%==118 goto menu6
if %opcion%==fin goto fin

goto menu7

:menu8

cls

echo ================ MENU8 ====================
echo 119.- Propiedades de dispositivos de sonido 
echo 120.- Propiedades de visualización 
echo 121.- Propiedades del ratón  
echo 122.- Propiedades del sistema 
echo 123.- Propiedades del teclado 
echo 124.- Protección de la base de datos de Windows 
echo 125.- Protección de ficheros de Windows (analizar en cada arranque)
echo 126.- Protección de ficheros de Windows (analizar en el próximo arranque)
echo 127.- Protección de ficheros de Windows (analizar)
echo 128.- Protección de ficheros de Windows (volver a la configuración de fábrica) 
echo 129.- Quicktime (si está instalado) 
echo 130.- Real Player (si está instalado) 
echo 131.- Escáneres y cámaras 
echo 132.- Servicio de indexación 
echo 133.- Servicios 
echo 134.- Siguientes comandos
echo 135.- Anteriores comandos
echo fin.- Salir

set /p opcion=%1

if %opcion%==119 mmsys.cpl 
if %opcion%==120 control desktop/desk.cpl 
if %opcion%==121 main.cpl / control mouse 
if %opcion%==122 sysdm.cpl 
if %opcion%==123 control keyboard 
if %opcion%==124 syskey 
if %opcion%==125 sfc /scanboot 
if %opcion%==126 sfc /scanonce 
if %opcion%==127 sfc /scannow 
if %opcion%==128 sfc /revert 
if %opcion%==129 QuickTime.cpl 
if %opcion%==130 realplay 
if %opcion%==131 sticpl.cpl 
if %opcion%==132 ciadv.msc 
if %opcion%==133 services.msc 
if %opcion%==134 goto menu9
if %opcion%==135 goto menu7
if %opcion%==fin goto fin

goto menu8

:menu9

cls

echo ================ MENU9 ====================
echo 136.- Servicios componentes
echo 137.- Tareas programadas 
echo 138.- Teclado de pantalla 
echo 139.- Tipos de letra  
echo 140.- Tweak UI (si está instalado) 
echo 141.- Utilidad de configuración de sistema 
echo 142.- Utilidad de red de cliente de SQL Server 
echo 143.- echo Utilidad de verificación de ficheros do sistema 
echo 144.- Utilidad de verificación do disco 
echo 145.- Utilidad Dr. Watson para o Windows 
echo 146.- Utilidades de grupos locales 
echo 147.- Comprobación de la firma del archivo 
echo 148.- Visualizador del área de almacenamiento 
echo 149.- Visualizador de aplicaciones de java (si está instalado) 
echo 150.- Siguientes comandos
echo 151.- Anteriores comandos
echo fin.- Salir

set /p opcion=%1

if %opcion%==136 dcomcnfg 
if %opcion%==137 control schedtasks 
if %opcion%==138 osk 
if %opcion%==139 control fonts 
if %opcion%==140 tweakui 
if %opcion%==141 msconfig 
if %opcion%==142 cliconfg 
if %opcion%==143 sfc 
if %opcion%==144 chkdsk 
if %opcion%==145 drwtsn32 
if %opcion%==146 lusrmgr.msc 
if %opcion%==147 sigverif 
if %opcion%==148 clipbrd 
if %opcion%==149 javaws 
if %opcion%==150 goto menu10
if %opcion%==151 goto menu8
if %opcion%==fin goto fin

goto menu9

:menu10

cls

echo ================ MENU10 ====================
echo 152.- Visualizador de eventos = eventvwr.msc 
echo 153.- Windows Magnifier = magnify 
echo 154.- Windows Media Player = wmplayer 
echo 155.- Windows Messenger (Ejecutar MSN) = msmsgs 
echo 156.- Windows XP Tour Wizard (Tour Windows) = tourstart 
echo 157.- Wordpad = write 
echo 158.- Anteriores comandos
echo fin.- Salir

set /p opcion=%1

if %opcion%==152 eventvwr.msc 
if %opcion%==153 magnify 
if %opcion%==154 wmplayer 
if %opcion%==155 msmsgs 
if %opcion%==156 tourstart 
if %opcion%==157 write  
if %opcion%==158 goto menu9
if %opcion%==fin goto fin

goto menu10
:fin
~~~

~~~
@echo off
set/p find=Escribe el patron de busqueda de los archivos
rem Crea un archivo llamado "informe.txt" en el Escritorio del usuario actual
echo. > %userprofile%\Desktop\Informe.txt

rem Y ahora recorrera todas las unidades del sistema buscando archivos que
rem coincidan con el patron
for %%A IN (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) DO (
   if exist %%A:\ (

      rem cambiar la unidad actual y el directorio actual
      cd /D %%A:\
     
      rem Ahora que ya estoy en la nueva unidad del sistema operativo, busco archivos
      rem podemos usar el siguiente comando o el que esta dos lineas mas abajo
      for /R %%E IN (*%find%) DO echo %%E >> %userprofile%\Desktop\Informe.txt
    
      rem Este es mas sencillo
      rem dir /s "find" >> %userprofile%\Desktop\Informe.txt

      )
)
@pause
~~~

~~~
@echo off
mysql -u root -proot pandurito_bd J:\code\base.sql
@pause
~~~

~~~
@echo off
cls
echo Se va a apagar el ordenador. Introduzca los segundos:
set /p seg=
echo Mensaje que se mostrara:
set /p mens=
shutdown -s -t %seg% -c "%mens%"
~~~

~~~
@echo off
REM list.bat
echo --- ARCHIVOS ---
dir /a-d /b /on
echo --- DIRECTORIOS ---
dir /ad /b /on
echo enter ...
pause > nul
~~~

~~~
@echo off
echo hola %1 %2 %3 %4 %5 
echo Enter para salir ...
pause > null
~~~

~~~
@rem paso de parametros
echo %0
echo %1
echo %2
@pause
~~~

~~~
@echo off
color 0a
title Programando en Batch MS-DOS
cls
rem aqui voya acolocar las variables
set nombre=%username%
echo Enter para continuar...
pause > null
:bienvenida
echo Bienvenido %nombre%
~~~

~~~
@echo off
for %%x in (*.txt) do @echo %%x
@pause
~~~

~~~
@echo off
echo Estamos en %CD%
systeminfo
@pause
~~~

~~~
@echo off
@rem ejemplo
color 4f
title Ejemplo

:menu
cls
@echo Estamos en: %CD%
@echo Hola %USERNAME% esto es una prueba

echo.
echo ============  Menu  ============
echo.
      echo 0. Informacion del sistema
      echo 1. Mandar ping
      echo 2. Conocer IP
      echo 3. Tracert
      echo 4. Netstat
      echo 5. Nslookup
      echo 6. Apagar sistema
      echo 7. Escanear disco
      echo 8. Salir

echo =================================
set /p numero=Teclea un opcion (Ctrl + c para salir del menu):
@rem echo Tecleaste %numero%

if %numero%==0 goto :informacion
if %numero%==1 goto :conexion
if %numero%==2 goto :miIP
if %numero%==3 goto :Tracert
if %numero%==4 goto :Netstat
if %numero%==5 goto :Nslookup
if %numero%==6 goto :apagar
if %numero%==7 goto :escanear
if %numero%==8 goto :fin
if %numero% GTR 8 echo Error
goto :menu


:informacion
@rem CALL miInfo
@start cmd /k systeminfo 
goto :menu

:conexion
@start cmd /k ping www.google.com.mx
goto :menu

:miIP
@start cmd /k ipconfig /all
goto :menu


:Tracert
set /p host=Teclea host o IP:
@start cmd /k tracert %host%
goto :menu

:Netstat
@start cmd /k netstat -bo 10
goto :menu

:Nslookup
@start cmd /k nslookup
goto :menu


:apagar
@rem shutdown -s -t 300 -c "Apagando sistema ..."
echo Apagando ...
goto :menu


:escanear
@rem sfc /scannow
echo Escaneando disco ...
goto :menu

:fin
exit
~~~

~~~
@echo off
@rem Programando en Batch
title Ejemplo de Batch 
cls
echo Hola usuario %USERNAME%
echo hora: %time%
echo fecha:  %date%
@pause
~~~

~~~
@echo off
@rem Programando en Batch
echo Cual es tu edad
SET /P m=
IF %m% GEQ 18 (
   echo ERES MAYOR DE EDAD
) ELSE (
   echo NO ERES MAYOR DE EDAD
@pause
~~~

~~~
@echo off
@rem Programando en Batch
IF not "%~1"=="hola" echo hola
IF "Uriel" == "%USERNAME%" echo hola %USERNAME%
@pause
~~~

~~~
@echo off
@rem Programando en Batch
set /a ubicacion=cd
pushd \
echo %ubicacion%
echo %homepath%
popd
@pause
~~~

~~~
@echo off
@rem Programando en Batch
set /a x=0
echo Tu nombre: 
set /p nombre=
echo Hola %nombre% bienvenido
echo valor inicial de x= %x%
set /a x=x+5
echo x ahora vale %x%
@pause
~~~

~~~
@echo off
@rem Programando en Batch
@start /b cmd /c java -version
@start /b cmd /c groovy --version
@start /b cmd /c python -V
@start /b cmd /c ceylon --version
@start /b cmd /c scala -version
@start /b cmd /c ruby --version
@pause
~~~

~~~
@echo off
@rem Programando en Batch
echo Ruta al archivo: %~f1
echo Disco: %~d1
echo Solo ruta: %~p1
echo Nombre: %~n1
echo Extension: %~x1
echo Ruta Corta: %~s1
echo Atributos: %~a1
echo Fecha: %~t1
echo Tamaño: %~z1
@pause
~~~

~~~
@echo off
@rem Programando en Batch
echo %0 %1 %2 %3
shift /1
echo %0 %1 %2 %3
@rem regresa la ruta y el archivo de %1.
echo %~f1    
@rem regresa la letra de la unidad de %1.
echo %~d1 
@rem regresa solo la ruta del archivo %1.       
echo %~p1 
@rem regresa solo el nombre de archivo %1.
echo %~n1 
@rem regresa solo la extension del archivo %1.       
echo %~x1    
@rem regresa solo la ruta, con directorios, con nombres cortos del archivo %1.    
echo %~s1  
@rem regresa los atributos del archivo.      
echo %~a1     
@rem regresa la hora/fecha del archivo %1   
echo %~t1
@rem  regresa el tamaño del archivo %1.        
echo %~z1       
@pause
~~~

~~~
@echo off
@rem http://www.elhacker.net/ProgramacionBat.html
set host= www.elhacker.net
echo haciendo ping a %host%
ping %host%
@pause
~~~

~~~
@echo off
:mensaje
echo Hola %USERNAME%
@pause
@exit
goto mensaje
~~~

~~~
@echo off
rem uso de for
echo Uso de for
for %%i in (*) do @echo %%i
@pause
~~~

~~~
@echo off
title Programando en Batch
echo Hola %USERNAME%
@pause
@exit
~~~

~~~
@echo off
title Programacion
set /a contador=0
for %%x in (*.txt) do (@echo %%x
    set /a contador=contador+1
)
echo no. de datos %contador%
@pause
~~~

~~~
@echo off
set argC=0
for %%x in (%*) do Set /A argC+=1
echo no. de parametros: %argC%
@pause
~~~

~~~
@echo off
echo Bat ejecutado...
@pause
~~~

~~~
@echo off
set nombre=%USERNAME%
echo Hola %nombre%

IF %nombre% EQU %USERNAME% (
	echo Correcto eres usuario registrado
) ELSE (
    echo Incorrecto, no eres usuario registrado
)
@pause
~~~

~~~
@echo off
ipconfig >> archivo.txt
dir
@pause
~~~

~~~
@echo off
cd
mkdir carpeta
cd carpeta
echo Hola aqui >> archivo.txt
echo podrias poner lo que quieras >> archivo.txt
echo tal vez el resultado de un proceso >> archivo.txt
dir 
@pause
~~~

~~~
@echo off
set /a n1=5
set /a n2=4
set /a suma=n1 + n2
echo suma: %suma%
@pause
~~~

~~~
@echo off
set /p nombre=Introduce tu nombre:
echo Hola %nombre%
IF %nombre% EQU %USERNAME% (
	echo Correcto eres usuario registrado
) ELSE (
    echo Incorrecto, no eres usuario registrado
)
@pause
~~~

~~~
rem () - agrupar 
rem ! ~ - - operadores unarios 
rem * / % - operadores aritméticos 
rem + - - operadores aritméticos 
rem << >> - desplazamiento lógico 
rem & - bit a bit y 
rem ^ - bit a bit exclusivo o 
rem | - bit a bit 
rem = *= /= %= += -= - asignación 
rem &= ^= |= <<= >>= 
rem , - separador de expresión 
~~~

~~~
@echo off
@cls
echo hola %*
@pause
~~~

~~~
@echo off
@rem ver informacion
echo Fecha actual %DATE% 
echo Hora actual %TIME% 
echo Nombre del PC %COMPUTERNAME% 
echo Nombre del usuario %USERNAME% 
echo Directorio raiz del HD %SYSTEMROOT% 
echo Directorio en que te encuentras %CD%
echo Numero de procesadores %NUMBER_OF_PROCESSORS% 
@pause
~~~

~~~
rem 4
@echo off
rem simular un while
setlocal enableextensions enabledelayedexpansion
set /a "x = 0"
:while1
    if %x% leq 8 (
        echo %x%
        set /a "x = x + 1"
        goto :while1
    )
endlocal
~~~

~~~
rem 3
@echo off
@REM inicializa con un valor "true"
@SET intCounter=1
:while
@REM prueba
@IF %intCounter% GTR 10 (GOTO wend)
@REM condicion "true"
@echo %intCounter%
@REM set prueba
@SET /a intCounter=intCounter+1
@REM loop
@GOTO while
:wend
@PAUSE
~~~

~~~
rem 2
@echo off
set NUMEROS=(1 3 4 6 87)
for %%x in %NUMEROS% do @echo %%x
echo.
echo Presiona Enter...
pause > null
~~~

~~~
rem 1
@echo off
set aleatorio=%RANDOM%
set /p numero=Introduce numero:
echo.
IF %numero% EQU %aleatorio% (
	echo Acertaste
) ELSE (
    echo Fallaste, el numero es %aleatorio%
)
echo Presiona Enter...
pause > null
:com1
~~~

~~~
@echo off
echo Estamos en %CD%
systeminfo
@pause
~~~

~~~
goto :com1
@echo off
@rem ejemplo
color 4f
title Ejemplo

:menu
cls
@echo Estamos en: %CD%
@echo Hola %USERNAME% esto es una prueba

echo.
echo ============  Menu  ============
echo.
      echo 0. Informacion del sistema
      echo 1. Mandar ping
      echo 2. Conocer IP
      echo 3. Tracert
      echo 4. Netstat
      echo 5. Nslookup
      echo 6. Apagar sistema
      echo 7. Escanear disco
      echo 8. Salir

echo =================================
set /p numero=Teclea un opcion (Ctrl + c para salir del menu):
@rem echo Tecleaste %numero%

if %numero%==0 goto :informacion
if %numero%==1 goto :conexion
if %numero%==2 goto :miIP
if %numero%==3 goto :Tracert
if %numero%==4 goto :Netstat
if %numero%==5 goto :Nslookup
if %numero%==6 goto :apagar
if %numero%==7 goto :escanear
if %numero%==8 goto :fin
if %numero% GTR 8 echo Error
goto :menu


:informacion
@rem CALL miInfo
@start cmd /k systeminfo
goto :menu

:conexion
@start cmd /k ping www.google.com.mx
goto :menu

:miIP
@start cmd /k ipconfig /all
goto :menu


:Tracert
set /p host=Teclea host o IP:
@start cmd /k tracert %host%
goto :menu

:Netstat
@start cmd /k netstat -bo 10
goto :menu

:Nslookup
@start cmd /k nslookup
goto :menu


:apagar
@rem shutdown -s -t 300 -c "Apagando sistema ..."
echo Apagando ...
goto :menu


:escanear
@rem sfc /scannow
echo Escaneando disco ...
goto :menu

:fin
exit
~~~

~~~
@echo off
@rem Programando en Batch
title Ejemplo de Batch 
cls
echo Hola usuario %USERNAME%
echo hora: %time%
echo fecha:  %date%
@pause
~~~

~~~
@echo off
@rem Programando en Batch
echo Cual es tu edad
SET /P m=
IF %m% GEQ 18 (
   echo ERES MAYOR DE EDAD
) ELSE (
   echo NO ERES MAYOR DE EDAD
@pause
~~~

~~~
@echo off
@rem Programando en Batch
IF not "%~1"=="hola" echo hola
IF "Uriel" == "%USERNAME%" echo hola %USERNAME%
@pause
~~~

~~~
@echo off
@rem Programando en Batch
set /a ubicacion=cd
pushd \
echo %ubicacion%
echo %homepath%
popd
@pause
~~~

~~~
@echo off
@rem Programando en Batch
set /a x=0
echo Tu nombre: 
set /p nombre=
echo Hola %nombre% bienvenido
echo valor inicial de x= %x%
set /a x=x+5
echo x ahora vale %x%
@pause
~~~

~~~
@echo off
@rem Programando en Batch
@start /b cmd /c java -version
@start /b cmd /c groovy --version
@start /b cmd /c python -V
@start /b cmd /c ceylon --version
@start /b cmd /c scala -version
@start /b cmd /c ruby --version
@pause
~~~

~~~
@echo off
@rem Programando en Batch
echo Ruta al archivo: %~f1
echo Disco: %~d1
echo Solo ruta: %~p1
echo Nombre: %~n1
echo Extension: %~x1
echo Ruta Corta: %~s1
echo Atributos: %~a1
echo Fecha: %~t1
echo Tamaño: %~z1
@pause
~~~

~~~
@echo off
@rem Programando en Batch
echo %0 %1 %2 %3
shift /1
echo %0 %1 %2 %3
@rem regresa la ruta y el archivo de %1.
echo %~f1    
@rem regresa la letra de la unidad de %1.
echo %~d1 
@rem regresa solo la ruta del archivo %1.       
echo %~p1 
@rem regresa solo el nombre de archivo %1.
echo %~n1 
@rem regresa solo la extension del archivo %1.       
echo %~x1    
@rem regresa solo la ruta, con directorios, con nombres cortos del archivo %1.    
echo %~s1  
@rem regresa los atributos del archivo.      
echo %~a1     
@rem regresa la hora/fecha del archivo %1   
echo %~t1
@rem  regresa el tamaño del archivo %1.        
echo %~z1       
@pause
~~~

~~~
@echo off
@rem http://www.elhacker.net/ProgramacionBat.html
set host= www.elhacker.net
echo haciendo ping a %host%
ping %host%
@pause
~~~

~~~
@echo off
:mensaje
echo Hola %USERNAME%
@pause
@exit
goto mensaje
~~~

~~~
@echo off
rem uso de for
echo Uso de for
for %%i in (*) do @echo %%i
@pause
~~~

~~~
@echo off
title Programando en Batch
echo Hola %USERNAME%
@pause
@exit
~~~

~~~
@echo off
title Programacion
set /a contador=0
for %%x in (*.txt) do (@echo %%x
    set /a contador=contador+1
)
echo no. de datos %contador%
@pause
~~~

~~~
@echo off
set argC=0
for %%x in (%*) do Set /A argC+=1
echo no. de parametros: %argC%
@pause
~~~

~~~
@echo off
echo Bat ejecutado...
@pause
~~~

~~~
@echo off
set nombre=%USERNAME%
echo Hola %nombre%

IF %nombre% EQU %USERNAME% (
	echo Correcto eres usuario registrado
) ELSE (
    echo Incorrecto, no eres usuario registrado
)
@pause
~~~

~~~
@echo off
ipconfig >> archivo.txt
dir
@pause
~~~

~~~
@echo off
cd
mkdir carpeta
cd carpeta
echo Hola aqui >> archivo.txt
echo podrias poner lo que quieras >> archivo.txt
echo tal vez el resultado de un proceso >> archivo.txt
dir 
@pause
~~~

~~~
@echo off
set /a n1=5
set /a n2=4
set /a suma=n1 + n2
echo suma: %suma%
@pause
~~~

~~~
@echo off
set /p nombre=Introduce tu nombre:
echo Hola %nombre%
IF %nombre% EQU %USERNAME% (
	echo Correcto eres usuario registrado
) ELSE (
    echo Incorrecto, no eres usuario registrado
)
@pause
~~~

~~~
rem () - agrupar 
rem ! ~ - - operadores unarios 
rem * / % - operadores aritméticos 
rem + - - operadores aritméticos 
rem << >> - desplazamiento lógico 
rem & - bit a bit y 
rem ^ - bit a bit exclusivo o 
rem | - bit a bit 
rem = *= /= %= += -= - asignación 
rem &= ^= |= <<= >>= 
rem , - separador de expresión 
~~~

~~~
@echo off
@cls
echo hola %*
@pause
~~~

~~~
@echo off
@rem ver informacion
echo Fecha actual %DATE% 
echo Hora actual %TIME% 
echo Nombre del PC %COMPUTERNAME% 
echo Nombre del usuario %USERNAME% 
echo Directorio raiz del HD %SYSTEMROOT% 
echo Directorio en que te encuentras %CD%
echo Numero de procesadores %NUMBER_OF_PROCESSORS% 
@pause
~~~

~~~
rem 4
@echo off
rem simular un while
setlocal enableextensions enabledelayedexpansion
set /a "x = 0"
:while1
    if %x% leq 8 (
        echo %x%
        set /a "x = x + 1"
        goto :while1
    )
endlocal
~~~

~~~
rem 3
@echo off
@REM inicializa con un valor "true"
@SET intCounter=1
:while
@REM prueba
@IF %intCounter% GTR 10 (GOTO wend)
@REM condicion "true"
@echo %intCounter%
@REM set prueba
@SET /a intCounter=intCounter+1
@REM loop
@GOTO while
:wend
@PAUSE
~~~

~~~
rem 2
@echo off
set NUMEROS=(1 3 4 6 87)
for %%x in %NUMEROS% do @echo %%x
echo.
echo Presiona Enter...
pause > null
~~~

~~~
rem 1
@echo off
set aleatorio=%RANDOM%
set /p numero=Introduce numero:
echo.
IF %numero% EQU %aleatorio% (
	echo Acertaste
) ELSE (
    echo Fallaste, el numero es %aleatorio%
)
echo Presiona Enter...
pause > null
:com1
~~~

~~~
@echo off
title Programacion
set /a contador=0
for %%x in (*.txt) do (@echo %%x
    set /a contador=contador+1
)
echo no. de datos %contador%
@pause
~~~

~~~
@echo off
set argC=0
for %%x in (%*) do Set /A argC+=1
echo no. de parametros: %argC%
@pause
~~~

~~~
goto :com1
@echo off
echo Bat ejecutado...
@pause
~~~

~~~
@echo off
set nombre=%USERNAME%
echo Hola %nombre%

IF %nombre% EQU %USERNAME% (
    echo Correcto eres usuario registrado
) ELSE (
    echo Incorrecto, no eres usuario registrado
)
@pause
~~~

~~~
@echo off
ipconfig >> archivo.txt
dir
@pause
~~~

~~~
@echo off
cd
mkdir carpeta
cd carpeta
echo Hola aqui >> archivo.txt
echo podrias poner lo que quieras >> archivo.txt
echo tal vez el resultado de un proceso >> archivo.txt
dir 
@pause
~~~

~~~
@echo off
set /a n1=5
set /a n2=4
set /a suma=n1 + n2
echo suma: %suma%
@pause
~~~

~~~
@echo off
set /p nombre=Introduce tu nombre:
echo Hola %nombre%
IF %nombre% EQU %USERNAME% (
	echo Correcto eres usuario registrado
) ELSE (
    echo Incorrecto, no eres usuario registrado
)
@pause
~~~

~~~
rem () - agrupar 
rem ! ~ - - operadores unarios 
rem * / % - operadores aritméticos 
rem + - - operadores aritméticos 
rem << >> - desplazamiento lógico 
rem & - bit a bit y 
rem ^ - bit a bit exclusivo o 
rem | - bit a bit 
rem = *= /= %= += -= - asignación 
rem &= ^= |= <<= >>= 
rem , - separador de expresión 
~~~

~~~
@echo off
@cls
echo hola %*
@pause
~~~

~~~
@echo off
@rem ver informacion
echo Fecha actual %DATE% 
echo Hora actual %TIME% 
echo Nombre del PC %COMPUTERNAME% 
echo Nombre del usuario %USERNAME% 
echo Directorio raiz del HD %SYSTEMROOT% 
echo Directorio en que te encuentras %CD%
echo Numero de procesadores %NUMBER_OF_PROCESSORS% 
@pause
~~~

~~~
rem 4
@echo off
rem simular un while
setlocal enableextensions enabledelayedexpansion
set /a "x = 0"
:while1
    if %x% leq 8 (
        echo %x%
        set /a "x = x + 1"
        goto :while1
    )
endlocal
~~~

~~~
rem 3
@echo off
@REM inicializa con un valor "true"
@SET intCounter=1
:while
@REM prueba
@IF %intCounter% GTR 10 (GOTO wend)
@REM condicion "true"
@echo %intCounter%
@REM set prueba
@SET /a intCounter=intCounter+1
@REM loop
@GOTO while
:wend
@PAUSE
~~~

~~~
rem 2
@echo off
set NUMEROS=(1 3 4 6 87)
for %%x in %NUMEROS% do @echo %%x
echo.
echo Presiona Enter...
pause > null
~~~

~~~
rem 1
@echo off
set aleatorio=%RANDOM%
set /p numero=Introduce numero:
echo.
IF %numero% EQU %aleatorio% (
	echo Acertaste
) ELSE (
    echo Fallaste, el numero es %aleatorio%
)
echo Presiona Enter...
pause > null
~~~

~~~
rem otro mas
@echo off
ipconfig >> archivo.txt
dir
@pause
~~~

~~~
rem otro ejemplo
@echo off
set nombre=%USERNAME%
echo Hola %nombre%

IF %nombre% EQU %USERNAME% (
    echo Correcto eres usuario registrado
) ELSE (
    echo Incorrecto, no eres usuario registrado
)
@pause
~~~

~~~
rem uso de for
@echo off
cd
for %%x in (*) do @echo %%x
@pause
~~~

~~~
rem escribir el resultado de un comando en un archivo de texto
@echo off
ipconfig >> archivo.txt
dir
@pause
~~~

~~~
rem crear una carpeta y un archivo
@echo off
cd
mkdir carpeta
cd carpeta
echo Hola aqui >> archivo.txt
echo podrias poner lo que quieras >> archivo.txt
echo tal vez el resultado de un proceso >> archivo.txt
dir 
@pause
~~~

~~~
rem suma en batch
@echo off
set /a n1=5
set /a n2=4
set /a suma=n1 + n2
echo suma: %suma%
@pause
~~~

~~~
rem uso de IF y ELSE
@echo off
set /p nombre=Introduce tu nombre:

echo Hola %nombre%

IF %nombre% EQU %USERNAME% (
    echo Correcto eres usuario registrado
) ELSE (
    echo Incorrecto, no eres usuario registrado
)

@pause
~~~

~~~
rem paso de parametros
@echo off
@cls
echo hola %*
@pause
~~~

~~~
rem ver informacion del sistema http://norfipc.com/comandos/consola-cmd-crear-archivos-batch.html
@echo off
echo Fecha actual %DATE% 
echo Hora actual %TIME% 
echo Nombre del PC %COMPUTERNAME% 
echo Nombre del usuario %USERNAME% 
echo Directorio raiz del HD %SYSTEMROOT% 
echo Directorio en que te encuentras %CD%
echo Numero de procesadores %NUMBER_OF_PROCESSORS% 
@pause
~~~

~~~
rem simular un while
@echo off
setlocal enableextensions enabledelayedexpansion
set /a "x = 0"
:while1
    if %x% leq 8 (
        echo %x%
        set /a "x = x + 1"
        goto :while1
    )
endlocal
~~~

~~~
rem uso de bucle do while
@echo off
@REM inicializa con un valor "true"
@SET intCounter=1
:while
@REM prueba
@IF %intCounter% GTR 10 (GOTO wend)
@REM condicion "true"
@echo %intCounter%
@REM set prueba
@SET /a intCounter=intCounter+1
@REM loop
@GOTO while
:wend
@PAUSE
~~~

~~~
rem uso de arreglos
@echo off
set NUMEROS=(1 3 4 6 87)
for %%x in %NUMEROS% do @echo %%x
echo.
echo Presiona Enter...
pause > null
~~~

~~~
rem el usuario trata de adivinar un número aleatorio
@echo off
set aleatorio=%RANDOM%
set /p numero=Introduce numero:
echo.
IF %numero% EQU %aleatorio% (
  echo Acertaste
) ELSE (
    echo Fallaste, el numero es %aleatorio%
)
echo Presiona Enter...
pause > null
~~~

~~~
rem comentarios multilínea
goto :comentario
@echo off
set /p nombre=Tu nombre:
echo.
echo Hola %nombre%
echo Presiona Enter para salir...
pause > null
:comentario
~~~

~~~
rem ********** existe Java************************************************
@echo off
Title Comprobando existencia de Java
SET MENSAJE =0
SET PWD=%CD%
SET JAVA= %java_home%\bin
CD %JAVA% 
DIR | FIND "java.exe" > NUL
IF ERRORLEVEL 1 GOTO Label1
IF ERRORLEVEL 0 GOTO Label0
:Label1
SET MENSAJE=No se encontro java en %java%
GOTO End
:Label0
SET MENSAJE=Se encontro java
GOTO End
:End
ECHO %MENSAJE%
ECHO Presiona Enter para continuar
pause > null
rem msg *  %MENSAJE%
chdir /d %PWD%
rem **************************************************************

~~~
rem ************************ estadisica ************************************************
@echo off

setlocal enabledelayedexpansion

cls 
echo VER LOS DIAS QUE SE HA CONECTADO CADA EQUIPO
echo ============================================
echo.

title Dias que se ha conectado cada equipo

rem Guardo en el archivo "aux1.txt" las lineas que contienen direcciones IP
rem y MAC

find "192.168." equiposIP.txt > aux1.txt

rem y ahora en el archivo "aux2.txt" guardo las diferentes direcciones MAC
rem de los equipos de la red

echo. > aux2.txt

for /f "tokens=3" %%i in (aux1.txt) do (
  rem compruebo si la MAC de la linea actual ya la he 
  rem metido antes en el archivo "aux2.txt"

  find "%%i" aux2.txt > nul
  if !errorlevel! == 1 echo %%i >> aux2.txt

)



rem Ya tengo metidas en el archivo "aux2.txt" todas las 
rem direcciones MAC distintas de mi red

rem Y ahora cojo de una en una las direcciones mac de "aux2.txt"
rem y voy sacando por pantalla todos los dias en que han estado 
rem conectadas

for /f "tokens=1" %%i in (aux2.txt) do (

    echo El equipo con MAC   %%i   se ha conectado:

    rem vacio el archivo "aux3.txt"
    echo. > aux3.txt

    rem este segundo for me sirve para mirar en "aux1.txt" las
    rem fechas en que una direccion MAC se ha conectado a la red

    for /f "tokens=5" %%x in ('find "%%i" aux1.txt') do (
      rem y lo guardo en "aux3.txt"
      echo %%x >> aux3.txt
    )

    rem vacio el archivo "aux4.txt"
    echo. > aux4.txt

    rem ahora en "aux3.txt" tengo las fechas en las que el ordenador
    rem en cuestion se conecto a la red, pero hay muchas repetidas.
    rem Las contare por fecha y lo sacaré por pantalla

    for /f "tokens=1" %%n in (aux3.txt) do (
      find "%%n" aux4.txt > nul
      if !errorlevel! == 1 (
         for /f "tokens=2 delims=:" %%x in ('find /c "%%n" aux3.txt') do (
            set veces=%%x
         )
         echo %%n - !veces! veces >> aux4.txt
      )      
    )
     

    for /f "tokens=2 delims=:" %%x in ('find /c "/" aux4.txt') do (
       echo %%x dias en total
    )  


    for /f "tokens=2 delims=:" %%x in ('find /c "/" aux3.txt') do (
       echo  y un total de %%x veces
    )  

    type aux4.txt
   
    pause
    echo.
)

cls


rem **************************************************************************************
~~~

~~~
rem *************** estadistica *******************************************
@echo off

setlocal enabledelayedexpansion

cls 
echo VER ESTADISTICAS DE UN MES Y ANIO DETERMINADO
echo =============================================
echo.

set/p mes=Introduce el numero de mes con dos cifras (p.ej: 06)

set/p anio=Introduce el anio (p.ej: 2012)
title Estadisticas del mes %mes% de %anio%

rem Ahora busco las lineas del archivo "equiposIP.txt" que
rem contienen el mes indicado

find "/%mes%/%anio%" equiposIP.txt > aux1.txt

echo Estadisticas para el mes %mes% del anio %anio% > aux2.txt
echo. >> aux2.txt 
echo Veces   Equipo >> aux2.txt
echo ============== >> aux2.txt
echo. >> aux2.txt

rem En el archivo "aux1.txt", las direcciones MAC que mas
rem aparecen son las que mas tiempo han estado conectadas
rem a la red durante este mes. Voy a recorrer linea por linea
rem dicho archivo, viendo la MAC que tiene cada linea y contando
rem cuantas veces aparece dicha MAC en el archivo, y asi sabre
rem cuanto tiempo ha estado conectado dicho ordenador.
rem el primer for recorre linea por linea el archivo y guarda
rem en la variable %%i la MAC de cada linea

for /f "tokens=3" %%i in (aux1.txt) do (
  rem Primero compruebo si la MAC actual ya la he usado antes

  find "%%i" aux2.txt > nul
  if !errorlevel! == 1 (

    rem este segundo for me sirve para guardar en la variable
    rem "veces" el numero de apariciones de la mac en el archivo

    for /f "tokens=2 delims=:" %%x in ('find /c "%%i" aux1.txt') do (
      set veces=%%x

      rem y ahora guardo en "aux2.txt" una linea por cada mac y 
      rem cuantas apariciones tiene en el archivo "aux1.txt"

      echo !veces!      %%i >> aux2.txt
    )
  )
)

cls

rem Y ahora muestro ordenado del reves el archivo "aux2.txt"
sort /r aux2.txt
pause
cls

rem ***********************************************************************
~~~

~~~
rem ************* estadistica *********************************
@echo off

setlocal enabledelayedexpansion

cls 
echo VER ESTADISTICAS DE UN MES Y ANIO DETERMINADO
echo =============================================
echo.

set/p mes=Introduce el numero de mes con dos cifras (p.ej: 06)

set/p anio=Introduce el anio (p.ej: 2012)
title Estadisticas del mes %mes% de %anio%

rem Ahora busco las lineas del archivo "equiposIP.txt" que
rem contienen el mes indicado

find "/%mes%/%anio%" equiposIP.txt > aux1.txt

echo Estadisticas para el mes %mes% del anio %anio% > aux2.txt
echo. >> aux2.txt 
echo Veces   Equipo >> aux2.txt
echo ============== >> aux2.txt
echo. >> aux2.txt

rem En el archivo "aux1.txt", las direcciones MAC que mas
rem aparecen son las que mas tiempo han estado conectadas
rem a la red durante este mes. Voy a recorrer linea por linea
rem dicho archivo, viendo la MAC que tiene cada linea y contando
rem cuantas veces aparece dicha MAC en el archivo, y asi sabre
rem cuanto tiempo ha estado conectado dicho ordenador.
rem el primer for recorre linea por linea el archivo y guarda
rem en la variable %%i la MAC de cada linea

for /f "tokens=3" %%i in (aux1.txt) do (
  rem Primero compruebo si la MAC actual ya la he usado antes

  find "%%i" aux2.txt > nul
  if !errorlevel! == 1 (

    rem este segundo for me sirve para guardar en la variable
    rem "veces" el numero de apariciones de la mac en el archivo

    for /f "tokens=2 delims=:" %%x in ('find /c "%%i" aux1.txt') do (
      set veces=%%x

      rem y ahora guardo en "aux2.txt" una linea por cada mac y 
      rem cuantas apariciones tiene en el archivo "aux1.txt"

      echo !veces!      %%i >> aux2.txt
    )
  )
)

cls

rem Y ahora muestro ordenado del reves el archivo "aux2.txt"
sort /r aux2.txt
pause
cls

rem **********************************************************
~~~

~~~
rem ***************** estadisticas ***************************************
@echo off
setlocal enabledelayedexpansion
cls 
echo VER ESTADISTICAS DE UN DIA DETERMINADO
echo ======================================
echo.

echo Introduce dia
set /p dia=

echo Introduce mes:
set /p mes=

echo Introduce anio
set /p anio=


set fecha=%dia%/%mes%/%anio%
title Estadisticas del dia %fecha%

rem Ahora busco las lineas del archivo "equiposIP.txt" que
rem contienen la fecha indicada

find "%fecha%" equiposIP.txt > aux1.txt

echo Estadisticas para el dia %fecha% > aux2.txt
echo. >> aux2.txt 
echo Veces   Equipo >> aux2.txt
echo ============== >> aux2.txt
echo. >> aux2.txt

rem En el archivo "aux1.txt", las direcciones MAC que mas
rem aparecen son las que mas tiempo han estado conectadas
rem a la red durante este dia. Voy a recorrer linea por linea
rem dicho archivo, viendo la MAC que tiene cada linea y contando
rem cuantas veces aparece dicha MAC en el archivo, y asi sabre
rem cuanto tiempo ha estado conectado dicho ordenador.
rem el primer for recorre linea por linea el archivo y guarda
rem en la variable %%i la MAC de cada linea

for /f "tokens=3" %%i in (aux1.txt) do (
  rem Primero compruebo si la MAC actual ya la he usado antes

  find "%%i" aux2.txt > nul
  if !errorlevel! == 1 (

    rem este segundo for me sirve para guardar en la variable
    rem "veces" el numero de apariciones de la mac en el archivo

    for /f "tokens=2 delims=:" %%x in ('find /c "%%i" aux1.txt') do (
      set veces=%%x

      rem y ahora guardo en "aux2.txt" una linea por cada mac y 
      rem cuantas apariciones tiene en el archivo "aux1.txt"

      echo !veces!      %%i >> aux2.txt
    )
  )
)

cls
sort /r aux2.txt
pause
cls
rem ***********************************************************************
~~~

~~~
rem ******************* comandos ****************
@echo off
:menu1
cls
echo Elige un comando para ejecutar:
echo ================ MENU1 ====================
echo 1.-  Abre filtro AC3 (si está instalado) 
echo 2.-  Acerca de Windows (Ver la versión de Windows) 
echo 3.-  Actualizaciones automáticas
echo 4.-  Añadir o quitar programas 
echo 5.-  Administrador de orígenes de datos de ODBC 
echo 6.-  Ayuda y soporte
echo 7.-  Medios de almacenamiento extraibles 
echo 8.-  Asistente de accesibilidad 
echo 9.-  Asistente de cámaras y escáneres 
echo 10.- Asistente de configuración de redes 
echo 11.- Asistente de copia de seguridad o restauración 
echo 12.- Asistente de conexión Internet 
echo 13.- Asistente de transferencia de definiciones y de ficheros 
echo 14.- Asistente de transferencia de ficheros a través de Bluetooth 
echo 15.- Asistente para añadir hardware
echo 16.- Siguientes comandos...
echo fin.- Salir

set /p opcion=%1

if %opcion%==1 ac3filter.cpl 
if %opcion%==2 winver 
if %opcion%==3 wuaucpl.cpl 
if %opcion%==4 appwiz.cpl 
if %opcion%==5 odbccp32.cpl 
if %opcion%==6 msinfo32 
if %opcion%==7 ntmsmgr.msc 
if %opcion%==8 accwiz 
if %opcion%==9 wiaacmgr 
if %opcion%==10 netsetup.cpl 
if %opcion%==11 ntbackup 
if %opcion%==12 inetwiz 
if %opcion%==13 migwiz 
if %opcion%==14 fsquirt 
if %opcion%==15 hdwwiz.cpl 
if %opcion%==16 goto menu2
if %opcion%==fin goto fin

goto menu1

:menu2

cls

echo ================ MENU2 ====================
echo 17.- Calculadora 
echo 18.- Centro de seguridad de Windows 
echo 19.- Certificados
echo 20.- Cliente Telnet 
echo 21.- Configuración del protocolo de Internet (información de DNS ) 
echo 22.- Configuración de protocolo de Internet (Todas las conexiones ) 
echo 23.- Configuración de protocolo de Internet (ver DNS ) 
echo 24.- Configuración de protocolo de Internet (ver todo) 
echo 25.- Configuración de protocolo de Internet (Modificar DHCP Class ID) 
echo 26.- Configuración IP
echo 27.- Conjunto de políticas resultante (XP Prof) 
echo 28.- Cuentas de usuario
echo 29.- Controladores de juegos 
echo 30.- Definiciones de seguridad local 
echo 31.- Desfragmentador de disco 
echo 32.- Siguientes comandos
echo 33.- Anteriores comandos
echo fin.- Salir

set /p opcion=%1

if %opcion%==17 calc 
if %opcion%==18 wscui.cpl 
if %opcion%==19 certmgr.msc 
if %opcion%==20 telnet 
if %opcion%==21 ipconfig /flushdns 
if %opcion%==22 ipconfig /release 
if %opcion%==23 ipconfig /displaydns 
if %opcion%==24 ipconfig /all 
if %opcion%==25 ipconfig /setclassid 
if %opcion%==26 ipconfig 
if %opcion%==27 rsop.msc 
if %opcion%==28 nusrmgr.cpl 
if %opcion%==29 joy.cpl 
if %opcion%==30 secpol.msc 
if %opcion%==31 dfrg.msc 
if %opcion%==32 goto menu3
if %opcion%==33 goto menu1
if %opcion%==fin goto fin

goto menu2

:menu3

cls

echo ================ MENU3 ====================
echo 34.- Dejar de utilizar Windows 
echo 35.- Editor de carácter privado
echo 36.- Editor de configuración de sistema 
echo 37.- Editor de registro 
echo 38.- Apagar Windows 
echo 39.- Explorador de Windows 
echo 40.- Herramienta de diagnóstico de Direct X 
echo 41.- Herramienta de importación de Libreta de direcciones 
echo 42.- Herramienta para quitar software malicioso de Microsoft Windows 
echo 43.- Herramienta administrativas
echo 44.- Firewall de Windows 
echo 45.- Fuentes
echo 46.- Gestión de computadores 
echo 47.- Gestión de discos 
echo 48.- Gestor de dispositivos 
echo 49.- Siguientes comandos
echo 50.- Anteriores comandos
echo fin.- Salir

set /p opcion=%1

if %opcion%==34 logoff 
if %opcion%==35 eudcedit 
if %opcion%==36 sysedit 
if %opcion%==37 regedit 
if %opcion%==38 shutdown 
if %opcion%==39 explorer 
if %opcion%==40 dxdiag 
if %opcion%==41 wabmig 
if %opcion%==42 mrt 
if %opcion%==43 control admintools 
if %opcion%==44 firewall.cpl 
if %opcion%==45 fonts 
if %opcion%==46 compmgmt.msc 
if %opcion%==47 diskmgmt.msc 
if %opcion%==48 devmgmt.msc 
if %opcion%==49 goto menu4
if %opcion%==50 goto menu2
if %opcion%==fin goto fin

goto menu3

:menu4

cls

echo ================ MENU4 ====================
echo 51.- Gestor de objectos
echo 52.- Gestor de particiones de disco
echo 53.- Gestor de tareas de Windows 
echo 54.- Gestor de utilidades 
echo 55.- Gestor de verificación de controladores 
echo 56.- HyperTerminal
echo 57.- Iexpress Wizard 
echo 58.- Impresoras y faxes 
echo 59.- Infra-estructura de gestión de Windows 
echo 60.- Iniciar Windows Update
echo 61.- Elementos a sincronizar 
echo 62.- Internet Explorer 
echo 63.- Introducción a Windows XP 
echo 64.- Juego de cartas Copas 
echo 65.- Juego de cartas FreeCell 
echo 66.- Siguientes comandos
echo 67.- Anteriores comandos
echo fin.- Salir

set /p opcion=%1

if %opcion%==51 Gestor de objectos = packager 
if %opcion%==52 Gestor de particiones de disco = diskpart 
if %opcion%==53 Gestor de tareas de Windows = taskmgr 
if %opcion%==54 Gestor de utilidades = utilman 
if %opcion%==55 Gestor de verificación de controladores = verifier 
if %opcion%==56 HyperTerminal = hypertrm 
if %opcion%==57 Iexpress Wizard = iexpress 
if %opcion%==58 Impresoras y faxes = control printers 
if %opcion%==59 Infra-estructura de gestión de Windows = wmimgmt.msc 
if %opcion%==60 Iniciar Windows Update = wupdmgr 
if %opcion%==61 Elementos a sincronizar = mobsync 
if %opcion%==62 Internet Explorer = iexplore 
if %opcion%==63 Introducción a Windows XP = tourstart 
if %opcion%==64 Juego de cartas Copas= mshearts 
if %opcion%==65 Juego de cartas FreeCell = freecell 
if %opcion%==66 goto menu5
if %opcion%==67 goto menu3
if %opcion%==fin goto fin

goto menu4

:menu5

cls

echo ================ MENU5 ====================
echo 68.- Juego de cartas Spider Solitare
echo 69.- Juego del Buscaminas
echo 70.- Conexión a escritorio remoto
echo 71.- Conexión de red
echo 72.- Limpieza de disco 
echo 73.- Linea de comandos 
echo 74.- Lista telefónica 
echo 75.- Libro de direcciones 
echo 76.- Mapa de caracteres 
echo 77.- Marcador telefónico 
echo 78.- Microsoft Access (si está instalado) 
echo 79.- Microsoft Chat
echo 80.- Microsoft Excel (si está instalado) 
echo 81.- Microsoft Frontpage (si está instalado) 
echo 82.- Microsoft Movie Maker
echo 83.- Siguientes comandos
echo 84.- Anteriores comandos
echo fin.- Salir

set /p opcion=%1

if %opcion%==68 spider 
if %opcion%==69 winmine 
if %opcion%==70 mstsc 
if %opcion%==71 control netconnections 
if %opcion%==72 cleanmgr 
if %opcion%==73 cmd 
if %opcion%==74 rasphone 
if %opcion%==75 wab 
if %opcion%==76 charmap 
if %opcion%==77 dialer 
if %opcion%==78 access.cpl 
if %opcion%==79 winchat 
if %opcion%==80 excel 
if %opcion%==81 frontpg 
if %opcion%==82 moviemk 
if %opcion%==83 goto menu6
if %opcion%==84 goto menu4
if %opcion%==fin goto fin

goto menu5

:menu6

cls

echo ================ MENU6 ====================
echo 85.-  Microsoft Paint 
echo 86.-  Microsoft Powerpoint (si está instalado) 
echo 87.-  Microsoft Word (si está instalado) 
echo 88.-  Nero (si está instalado)
echo 89.-  Netmeeting 
echo 90.-  Notepad 
echo 91.-  Nview Desktop Manager (si está instalado)
echo 92.-  Opciones de accesibilidad
echo 93.-  Opciones de carpetas 
echo 94.-  Opciones regionales y de idioma
echo 95.-  Outlook Express
echo 96.-  Panel de control 
echo 97.-  Panel de control Direct X (si está instalado)
echo 98.-  Panel de control Java (si está instalado) 
echo 99.-  Paint
echo 100.- Siguientes comandos
echo 101.- Anteriores comandos
echo fin.- Salir

set /p opcion=%1

if %opcion%==85 Microsoft Paint = mspaint 
if %opcion%==86 Microsoft Powerpoint (si está instalado) = powerpnt 
if %opcion%==87 Microsoft Word (si está instalado) = winword 
if %opcion%==88 Nero (si está instalado) = nero 
if %opcion%==89 Netmeeting = conf 
if %opcion%==90 Notepad = notepad 
if %opcion%==91 Nview Desktop Manager (si está instalado) = nvtuicpl.cpl 
if %opcion%==92 Opciones de accesibilidad = access.cpl 
if %opcion%==93 Opciones de carpetas = control folders 
if %opcion%==94 Opciones regionales y de idioma = intl.cpl 
if %opcion%==95 Outlook Express = msimn 
if %opcion%==96 Panel de control = control 
if %opcion%==97 Panel de control Direct X (si está instalado) = directx.cpl 
if %opcion%==98 Panel de control Java (si está instalado) = jpicpl32.cpl 
if %opcion%==99 Paint = pbrush 
if %opcion%==100 goto menu7 
if %opcion%==101 goto menu5
if %opcion%==fin goto fin

goto menu6

:menu7

cls

echo ================ MENU7 ====================
echo 102.- Recurso DDE 
echo 103.- Impresoras  
echo 104.- Carpetas compartidas  
echo 105.- Solicitudes del operador de medios de almacenamiento extraibles 
echo 106.- Rendimiento 
echo 107.- Rendimiento  
echo 108.- Opciones de telefonía y el Modem 
echo 109.- Pinball para Windows 
echo 110.- Política de grupo (XP Prof) 
echo 111.- Configuración de energía  
echo 112.- Findfast 
echo 113.- Propiedades de visualización 
echo 114.- Propiedades de internet 
echo 115.- Propiedades de fecha y hora 
echo 116.- Propiedades de contraseñas
echo 117.- Siguientes comandos
echo 118.- Anteriores comandos
echo fin.- Salir

set /p opcion=%1

if %opcion%==102 ddeshare 
if %opcion%==103 printers 
if %opcion%==104 fsmgmt.msc 
if %opcion%==105 ntmsoprq.msc 
if %opcion%==106 perfmon 
if %opcion%==107 perfmon.msc 
if %opcion%==108 telephon.cpl 
if %opcion%==109 pinball 
if %opcion%==110 gpedit.msc 
if %opcion%==111 powercfg.cpl 
if %opcion%==112 findfast.cpl 
if %opcion%==113 control color 
if %opcion%==114 inetcpl.cpl 
if %opcion%==115 timedate.cpl 
if %opcion%==116 password.cpl 
if %opcion%==117 goto menu8
if %opcion%==118 goto menu6
if %opcion%==fin goto fin

goto menu7

:menu8

cls

echo ================ MENU8 ====================
echo 119.- Propiedades de dispositivos de sonido 
echo 120.- Propiedades de visualización 
echo 121.- Propiedades del ratón  
echo 122.- Propiedades del sistema 
echo 123.- Propiedades del teclado 
echo 124.- Protección de la base de datos de Windows 
echo 125.- Protección de ficheros de Windows (analizar en cada arranque)
echo 126.- Protección de ficheros de Windows (analizar en el próximo arranque)
echo 127.- Protección de ficheros de Windows (analizar)
echo 128.- Protección de ficheros de Windows (volver a la configuración de fábrica) 
echo 129.- Quicktime (si está instalado) 
echo 130.- Real Player (si está instalado) 
echo 131.- Escáneres y cámaras 
echo 132.- Servicio de indexación 
echo 133.- Servicios 
echo 134.- Siguientes comandos
echo 135.- Anteriores comandos
echo fin.- Salir

set /p opcion=%1

if %opcion%==119 mmsys.cpl 
if %opcion%==120 control desktop/desk.cpl 
if %opcion%==121 main.cpl / control mouse 
if %opcion%==122 sysdm.cpl 
if %opcion%==123 control keyboard 
if %opcion%==124 syskey 
if %opcion%==125 sfc /scanboot 
if %opcion%==126 sfc /scanonce 
if %opcion%==127 sfc /scannow 
if %opcion%==128 sfc /revert 
if %opcion%==129 QuickTime.cpl 
if %opcion%==130 realplay 
if %opcion%==131 sticpl.cpl 
if %opcion%==132 ciadv.msc 
if %opcion%==133 services.msc 
if %opcion%==134 goto menu9
if %opcion%==135 goto menu7
if %opcion%==fin goto fin

goto menu8

:menu9

cls

echo ================ MENU9 ====================
echo 136.- Servicios componentes
echo 137.- Tareas programadas 
echo 138.- Teclado de pantalla 
echo 139.- Tipos de letra  
echo 140.- Tweak UI (si está instalado) 
echo 141.- Utilidad de configuración de sistema 
echo 142.- Utilidad de red de cliente de SQL Server 
echo 143.- echo Utilidad de verificación de ficheros do sistema 
echo 144.- Utilidad de verificación do disco 
echo 145.- Utilidad Dr. Watson para o Windows 
echo 146.- Utilidades de grupos locales 
echo 147.- Comprobación de la firma del archivo 
echo 148.- Visualizador del área de almacenamiento 
echo 149.- Visualizador de aplicaciones de java (si está instalado) 
echo 150.- Siguientes comandos
echo 151.- Anteriores comandos
echo fin.- Salir

set /p opcion=%1

if %opcion%==136 dcomcnfg 
if %opcion%==137 control schedtasks 
if %opcion%==138 osk 
if %opcion%==139 control fonts 
if %opcion%==140 tweakui 
if %opcion%==141 msconfig 
if %opcion%==142 cliconfg 
if %opcion%==143 sfc 
if %opcion%==144 chkdsk 
if %opcion%==145 drwtsn32 
if %opcion%==146 lusrmgr.msc 
if %opcion%==147 sigverif 
if %opcion%==148 clipbrd 
if %opcion%==149 javaws 
if %opcion%==150 goto menu10
if %opcion%==151 goto menu8
if %opcion%==fin goto fin

goto menu9

:menu10

cls

echo ================ MENU10 ====================
echo 152.- Visualizador de eventos = eventvwr.msc 
echo 153.- Windows Magnifier = magnify 
echo 154.- Windows Media Player = wmplayer 
echo 155.- Windows Messenger (Ejecutar MSN) = msmsgs 
echo 156.- Windows XP Tour Wizard (Tour Windows) = tourstart 
echo 157.- Wordpad = write 
echo 158.- Anteriores comandos
echo fin.- Salir

set /p opcion=%1

if %opcion%==152 eventvwr.msc 
if %opcion%==153 magnify 
if %opcion%==154 wmplayer 
if %opcion%==155 msmsgs 
if %opcion%==156 tourstart 
if %opcion%==157 write  
if %opcion%==158 goto menu9
if %opcion%==fin goto fin

goto menu10

:fin
rem ********************************************************
~~~

~~~
rem ************** comandos *********************************************
@echo off
:menu1

cls

echo Elige un comando para ejecutar:
echo ================ MENU1 ====================
echo 1.-  Abre filtro AC3 (si está instalado) 
echo 2.-  Acerca de Windows (Ver la versión de Windows) 
echo 3.-  Actualizaciones automáticas
echo 4.-  Añadir o quitar programas 
echo 5.-  Administrador de orígenes de datos de ODBC 
echo 6.-  Ayuda y soporte
echo 7.-  Medios de almacenamiento extraibles 
echo 8.-  Asistente de accesibilidad 
echo 9.-  Asistente de cámaras y escáneres 
echo 10.- Asistente de configuración de redes 
echo 11.- Asistente de copia de seguridad o restauración 
echo 12.- Asistente de conexión Internet 
echo 13.- Asistente de transferencia de definiciones y de ficheros 
echo 14.- Asistente de transferencia de ficheros a través de Bluetooth 
echo 15.- Asistente para añadir hardware
echo 16.- Siguientes comandos...
echo fin.- Salir

set /p opcion=%1

if %opcion%==1 ac3filter.cpl 
if %opcion%==2 winver 
if %opcion%==3 wuaucpl.cpl 
if %opcion%==4 appwiz.cpl 
if %opcion%==5 odbccp32.cpl 
if %opcion%==6 msinfo32 
if %opcion%==7 ntmsmgr.msc 
if %opcion%==8 accwiz 
if %opcion%==9 wiaacmgr 
if %opcion%==10 netsetup.cpl 
if %opcion%==11 ntbackup 
if %opcion%==12 inetwiz 
if %opcion%==13 migwiz 
if %opcion%==14 fsquirt 
if %opcion%==15 hdwwiz.cpl 
if %opcion%==16 goto menu2
if %opcion%==fin goto fin

goto menu1

:menu2

cls

echo ================ MENU2 ====================
echo 17.- Calculadora 
echo 18.- Centro de seguridad de Windows 
echo 19.- Certificados
echo 20.- Cliente Telnet 
echo 21.- Configuración del protocolo de Internet (información de DNS ) 
echo 22.- Configuración de protocolo de Internet (Todas las conexiones ) 
echo 23.- Configuración de protocolo de Internet (ver DNS ) 
echo 24.- Configuración de protocolo de Internet (ver todo) 
echo 25.- Configuración de protocolo de Internet (Modificar DHCP Class ID) 
echo 26.- Configuración IP
echo 27.- Conjunto de políticas resultante (XP Prof) 
echo 28.- Cuentas de usuario
echo 29.- Controladores de juegos 
echo 30.- Definiciones de seguridad local 
echo 31.- Desfragmentador de disco 
echo 32.- Siguientes comandos
echo 33.- Anteriores comandos
echo fin.- Salir

set /p opcion=%1

if %opcion%==17 calc 
if %opcion%==18 wscui.cpl 
if %opcion%==19 certmgr.msc 
if %opcion%==20 telnet 
if %opcion%==21 ipconfig /flushdns 
if %opcion%==22 ipconfig /release 
if %opcion%==23 ipconfig /displaydns 
if %opcion%==24 ipconfig /all 
if %opcion%==25 ipconfig /setclassid 
if %opcion%==26 ipconfig 
if %opcion%==27 rsop.msc 
if %opcion%==28 nusrmgr.cpl 
if %opcion%==29 joy.cpl 
if %opcion%==30 secpol.msc 
if %opcion%==31 dfrg.msc 
if %opcion%==32 goto menu3
if %opcion%==33 goto menu1
if %opcion%==fin goto fin

goto menu2

:menu3

cls

echo ================ MENU3 ====================
echo 34.- Dejar de utilizar Windows 
echo 35.- Editor de carácter privado
echo 36.- Editor de configuración de sistema 
echo 37.- Editor de registro 
echo 38.- Apagar Windows 
echo 39.- Explorador de Windows 
echo 40.- Herramienta de diagnóstico de Direct X 
echo 41.- Herramienta de importación de Libreta de direcciones 
echo 42.- Herramienta para quitar software malicioso de Microsoft Windows 
echo 43.- Herramienta administrativas
echo 44.- Firewall de Windows 
echo 45.- Fuentes
echo 46.- Gestión de computadores 
echo 47.- Gestión de discos 
echo 48.- Gestor de dispositivos 
echo 49.- Siguientes comandos
echo 50.- Anteriores comandos
echo fin.- Salir

set /p opcion=%1

if %opcion%==34 logoff 
if %opcion%==35 eudcedit 
if %opcion%==36 sysedit 
if %opcion%==37 regedit 
if %opcion%==38 shutdown 
if %opcion%==39 explorer 
if %opcion%==40 dxdiag 
if %opcion%==41 wabmig 
if %opcion%==42 mrt 
if %opcion%==43 control admintools 
if %opcion%==44 firewall.cpl 
if %opcion%==45 fonts 
if %opcion%==46 compmgmt.msc 
if %opcion%==47 diskmgmt.msc 
if %opcion%==48 devmgmt.msc 
if %opcion%==49 goto menu4
if %opcion%==50 goto menu2
if %opcion%==fin goto fin

goto menu3

:menu4

cls

echo ================ MENU4 ====================
echo 51.- Gestor de objectos
echo 52.- Gestor de particiones de disco
echo 53.- Gestor de tareas de Windows 
echo 54.- Gestor de utilidades 
echo 55.- Gestor de verificación de controladores 
echo 56.- HyperTerminal
echo 57.- Iexpress Wizard 
echo 58.- Impresoras y faxes 
echo 59.- Infra-estructura de gestión de Windows 
echo 60.- Iniciar Windows Update
echo 61.- Elementos a sincronizar 
echo 62.- Internet Explorer 
echo 63.- Introducción a Windows XP 
echo 64.- Juego de cartas Copas 
echo 65.- Juego de cartas FreeCell 
echo 66.- Siguientes comandos
echo 67.- Anteriores comandos
echo fin.- Salir

set /p opcion=%1

if %opcion%==51 Gestor de objectos = packager 
if %opcion%==52 Gestor de particiones de disco = diskpart 
if %opcion%==53 Gestor de tareas de Windows = taskmgr 
if %opcion%==54 Gestor de utilidades = utilman 
if %opcion%==55 Gestor de verificación de controladores = verifier 
if %opcion%==56 HyperTerminal = hypertrm 
if %opcion%==57 Iexpress Wizard = iexpress 
if %opcion%==58 Impresoras y faxes = control printers 
if %opcion%==59 Infra-estructura de gestión de Windows = wmimgmt.msc 
if %opcion%==60 Iniciar Windows Update = wupdmgr 
if %opcion%==61 Elementos a sincronizar = mobsync 
if %opcion%==62 Internet Explorer = iexplore 
if %opcion%==63 Introducción a Windows XP = tourstart 
if %opcion%==64 Juego de cartas Copas= mshearts 
if %opcion%==65 Juego de cartas FreeCell = freecell 
if %opcion%==66 goto menu5
if %opcion%==67 goto menu3
if %opcion%==fin goto fin

goto menu4

:menu5

cls

echo ================ MENU5 ====================
echo 68.- Juego de cartas Spider Solitare
echo 69.- Juego del Buscaminas
echo 70.- Conexión a escritorio remoto
echo 71.- Conexión de red
echo 72.- Limpieza de disco 
echo 73.- Linea de comandos 
echo 74.- Lista telefónica 
echo 75.- Libro de direcciones 
echo 76.- Mapa de caracteres 
echo 77.- Marcador telefónico 
echo 78.- Microsoft Access (si está instalado) 
echo 79.- Microsoft Chat
echo 80.- Microsoft Excel (si está instalado) 
echo 81.- Microsoft Frontpage (si está instalado) 
echo 82.- Microsoft Movie Maker
echo 83.- Siguientes comandos
echo 84.- Anteriores comandos
echo fin.- Salir

set /p opcion=%1

if %opcion%==68 spider 
if %opcion%==69 winmine 
if %opcion%==70 mstsc 
if %opcion%==71 control netconnections 
if %opcion%==72 cleanmgr 
if %opcion%==73 cmd 
if %opcion%==74 rasphone 
if %opcion%==75 wab 
if %opcion%==76 charmap 
if %opcion%==77 dialer 
if %opcion%==78 access.cpl 
if %opcion%==79 winchat 
if %opcion%==80 excel 
if %opcion%==81 frontpg 
if %opcion%==82 moviemk 
if %opcion%==83 goto menu6
if %opcion%==84 goto menu4
if %opcion%==fin goto fin

goto menu5

:menu6

cls

echo ================ MENU6 ====================
echo 85.-  Microsoft Paint 
echo 86.-  Microsoft Powerpoint (si está instalado) 
echo 87.-  Microsoft Word (si está instalado) 
echo 88.-  Nero (si está instalado)
echo 89.-  Netmeeting 
echo 90.-  Notepad 
echo 91.-  Nview Desktop Manager (si está instalado)
echo 92.-  Opciones de accesibilidad
echo 93.-  Opciones de carpetas 
echo 94.-  Opciones regionales y de idioma
echo 95.-  Outlook Express
echo 96.-  Panel de control 
echo 97.-  Panel de control Direct X (si está instalado)
echo 98.-  Panel de control Java (si está instalado) 
echo 99.-  Paint
echo 100.- Siguientes comandos
echo 101.- Anteriores comandos
echo fin.- Salir

set /p opcion=%1

if %opcion%==85 Microsoft Paint = mspaint 
if %opcion%==86 Microsoft Powerpoint (si está instalado) = powerpnt 
if %opcion%==87 Microsoft Word (si está instalado) = winword 
if %opcion%==88 Nero (si está instalado) = nero 
if %opcion%==89 Netmeeting = conf 
if %opcion%==90 Notepad = notepad 
if %opcion%==91 Nview Desktop Manager (si está instalado) = nvtuicpl.cpl 
if %opcion%==92 Opciones de accesibilidad = access.cpl 
if %opcion%==93 Opciones de carpetas = control folders 
if %opcion%==94 Opciones regionales y de idioma = intl.cpl 
if %opcion%==95 Outlook Express = msimn 
if %opcion%==96 Panel de control = control 
if %opcion%==97 Panel de control Direct X (si está instalado) = directx.cpl 
if %opcion%==98 Panel de control Java (si está instalado) = jpicpl32.cpl 
if %opcion%==99 Paint = pbrush 
if %opcion%==100 goto menu7 
if %opcion%==101 goto menu5
if %opcion%==fin goto fin

goto menu6

:menu7

cls

echo ================ MENU7 ====================
echo 102.- Recurso DDE 
echo 103.- Impresoras  
echo 104.- Carpetas compartidas  
echo 105.- Solicitudes del operador de medios de almacenamiento extraibles 
echo 106.- Rendimiento 
echo 107.- Rendimiento  
echo 108.- Opciones de telefonía y el Modem 
echo 109.- Pinball para Windows 
echo 110.- Política de grupo (XP Prof) 
echo 111.- Configuración de energía  
echo 112.- Findfast 
echo 113.- Propiedades de visualización 
echo 114.- Propiedades de internet 
echo 115.- Propiedades de fecha y hora 
echo 116.- Propiedades de contraseñas
echo 117.- Siguientes comandos
echo 118.- Anteriores comandos
echo fin.- Salir

set /p opcion=%1

if %opcion%==102 ddeshare 
if %opcion%==103 printers 
if %opcion%==104 fsmgmt.msc 
if %opcion%==105 ntmsoprq.msc 
if %opcion%==106 perfmon 
if %opcion%==107 perfmon.msc 
if %opcion%==108 telephon.cpl 
if %opcion%==109 pinball 
if %opcion%==110 gpedit.msc 
if %opcion%==111 powercfg.cpl 
if %opcion%==112 findfast.cpl 
if %opcion%==113 control color 
if %opcion%==114 inetcpl.cpl 
if %opcion%==115 timedate.cpl 
if %opcion%==116 password.cpl 
if %opcion%==117 goto menu8
if %opcion%==118 goto menu6
if %opcion%==fin goto fin

goto menu7

:menu8

cls

echo ================ MENU8 ====================
echo 119.- Propiedades de dispositivos de sonido 
echo 120.- Propiedades de visualización 
echo 121.- Propiedades del ratón  
echo 122.- Propiedades del sistema 
echo 123.- Propiedades del teclado 
echo 124.- Protección de la base de datos de Windows 
echo 125.- Protección de ficheros de Windows (analizar en cada arranque)
echo 126.- Protección de ficheros de Windows (analizar en el próximo arranque)
echo 127.- Protección de ficheros de Windows (analizar)
echo 128.- Protección de ficheros de Windows (volver a la configuración de fábrica) 
echo 129.- Quicktime (si está instalado) 
echo 130.- Real Player (si está instalado) 
echo 131.- Escáneres y cámaras 
echo 132.- Servicio de indexación 
echo 133.- Servicios 
echo 134.- Siguientes comandos
echo 135.- Anteriores comandos
echo fin.- Salir

set /p opcion=%1

if %opcion%==119 mmsys.cpl 
if %opcion%==120 control desktop/desk.cpl 
if %opcion%==121 main.cpl / control mouse 
if %opcion%==122 sysdm.cpl 
if %opcion%==123 control keyboard 
if %opcion%==124 syskey 
if %opcion%==125 sfc /scanboot 
if %opcion%==126 sfc /scanonce 
if %opcion%==127 sfc /scannow 
if %opcion%==128 sfc /revert 
if %opcion%==129 QuickTime.cpl 
if %opcion%==130 realplay 
if %opcion%==131 sticpl.cpl 
if %opcion%==132 ciadv.msc 
if %opcion%==133 services.msc 
if %opcion%==134 goto menu9
if %opcion%==135 goto menu7
if %opcion%==fin goto fin

goto menu8

:menu9

cls

echo ================ MENU9 ====================
echo 136.- Servicios componentes
echo 137.- Tareas programadas 
echo 138.- Teclado de pantalla 
echo 139.- Tipos de letra  
echo 140.- Tweak UI (si está instalado) 
echo 141.- Utilidad de configuración de sistema 
echo 142.- Utilidad de red de cliente de SQL Server 
echo 143.- echo Utilidad de verificación de ficheros do sistema 
echo 144.- Utilidad de verificación do disco 
echo 145.- Utilidad Dr. Watson para o Windows 
echo 146.- Utilidades de grupos locales 
echo 147.- Comprobación de la firma del archivo 
echo 148.- Visualizador del área de almacenamiento 
echo 149.- Visualizador de aplicaciones de java (si está instalado) 
echo 150.- Siguientes comandos
echo 151.- Anteriores comandos
echo fin.- Salir

set /p opcion=%1

if %opcion%==136 dcomcnfg 
if %opcion%==137 control schedtasks 
if %opcion%==138 osk 
if %opcion%==139 control fonts 
if %opcion%==140 tweakui 
if %opcion%==141 msconfig 
if %opcion%==142 cliconfg 
if %opcion%==143 sfc 
if %opcion%==144 chkdsk 
if %opcion%==145 drwtsn32 
if %opcion%==146 lusrmgr.msc 
if %opcion%==147 sigverif 
if %opcion%==148 clipbrd 
if %opcion%==149 javaws 
if %opcion%==150 goto menu10
if %opcion%==151 goto menu8
if %opcion%==fin goto fin

goto menu9

:menu10

cls

echo ================ MENU10 ====================
echo 152.- Visualizador de eventos = eventvwr.msc 
echo 153.- Windows Magnifier = magnify 
echo 154.- Windows Media Player = wmplayer 
echo 155.- Windows Messenger (Ejecutar MSN) = msmsgs 
echo 156.- Windows XP Tour Wizard (Tour Windows) = tourstart 
echo 157.- Wordpad = write 
echo 158.- Anteriores comandos
echo fin.- Salir

set /p opcion=%1

if %opcion%==152 eventvwr.msc 
if %opcion%==153 magnify 
if %opcion%==154 wmplayer 
if %opcion%==155 msmsgs 
if %opcion%==156 tourstart 
if %opcion%==157 write  
if %opcion%==158 goto menu9
if %opcion%==fin goto fin

goto menu10

:fin

rem ****************************************************************
~~~

~~~
rem *************** utilidad **************************
@echo off
:inicio
cls
rem En este primer comando, filtro la salida de "ipconfig" para que se guarde
rem en el archivo "prueba" solo los nombres de las tarjetas de red del equipo
ipconfig /all | find "Adaptador Ethernet" > prueba

rem Ahora preparo un archivo auxiliar llamado "prueba2". Es necesario poner los
rem 2 puntos del pricipio separados por espacios
echo . . TARJETAS DE RED DE ESTE EQUIPO: > prueba2
echo . . =============================== >>prueba2

rem ahora con el comando for filtro las lineas del archivo "prueba" y las 
rem guardo sin el caracter ":" en el archivo "prueba2"
for /f "delims=:" %%i in (prueba) do @echo %%i >> prueba2

rem Ahora cojo la segunda palabra, y el resto de linea, de cada linea del 
rem archivo "prueba2", para sacar por pantalla los nombres de las tarjetas
rem de red del equipo
for /f "tokens=2,*" %%i in (prueba2) do @echo %%j

rem ahora borro los archivos auxiliares "prueba" y "prueba2"
del prueba
del prueba2

echo .
echo En que tarjeta de red quieres trabajar:
set /p tarjeta=

cls
echo Quieres poner IP dinámica o estatica:
echo 1.- Dinamica
echo 2.- Estatica
set /p opcion=
if %opcion% == 1 goto dinamica
if %opcion% == 2 goto estatica

goto inicio

:dinamica
cls
netsh interface ip set address name="%tarjeta%" source=dhcp
netsh interface ip set dns "%tarjeta%" source=dhcp
goto fin

:estatica
cls
echo Dirección IP (p.ej: 192.168.1.23)
set /p ip=
echo Mascara de red (p.ej: 255.255.255.0)
set /p mascara=
echo Puerta de enlace (p.ej: 192.168.1.1)
set /p gateway=
echo Servidor DNS primario (p.ej: 80.58.0.33)
set /p dns1=
echo Servidor DNS secundario (p.ej: 80.58.61.254)
set /p dns2=

netsh interface ip set address name="%tarjeta%" source=static %ip% %mascara% 

%gateway% 1
netsh interface ip set dns "%tarjeta%" static %dns1%
netsh interface ip add dns name="%tarjeta%" addr=%dns2%

:fin

rem **********************************************************
~~~

~~~
rem *************** chat*******************************
@echo off
Rem ChatBox 2.0 Segadorfelix
Rem Basado en el Chat de 3D1
IF ["%~1"]==[""] (Goto:HELP) else IF ["%~2"]==[""] (Goto:HELP)
set demonw=dem%random%
(mode|FIND "as")>%demonw%.ini
for /F "tokens=2" %%_ IN (%demonw%.ini) DO (set "Lineaws=%%_" & Goto:BREAK)
:BREAK
for /F "tokens=2 skip=1" %%_ IN (%demonw%.ini) DO (set "Columw=%%_")
del %demonw%.ini
IF %Lineaws% GEQ 300 set "Lineaws=25"
mode con cols=80 lines=25
set "VALUE=1"
Set "nick=%~2"
set "nick=%nick:<=%"
set "nick=%nick:>=%"
set "nick=%nick:"=%"
set "nick=%nick:(=%"
set "nick=%nick:)=%"
Set "server=%~1"
set "server=%server:<=%"
set "server=%server:>=%"
set "server=%server:"=%"
set "server=%server:(=%"
set "server=%server:)=%"
title ChatBox 2.0
cls
(
echo  URLSend = wscript.arguments(0^)
echo	MSG = wscript.arguments(1^)
echo	Set SendMail = CreateObject("InternetExplorer.Application"^)
echo	SendMail.Navigate URLSend ^& MSG
echo 	Do While SendMail.ReadyState ^<^> 4
echo		wscript.sleep 50
echo	Loop
)>"%tmp%\SendMail.vbs"
(
echo	Set ReadMail = CreateObject("Microsoft.XMLHTTP"^)
echo	URLRead = wscript.arguments(0^)
echo	ReadMail.Open "Get", URLRead
echo	ReadMail.Send
echo	Do While ReadMail.ReadyState ^<^> 4
echo		wscript.sleep 50
echo	Loop
echo	wscript.Echo ReadMail.ResponseText
)>"%tmp%\ReadMail.vbs"
set "Dir=%cd%\"
cd "%tmp%"
:Chat
cd %Dir%
set forum=Chat
Cls
echo.
echo.
echo.
echo.
echo NOTA:Escriba "Value(0)"(sin las comillas)para quitar la linea inferior.
echo y "Value(1)" para restaurarla.^|Para salir, escriba "[exit]"
echo.
echo              NICK: %nick%
echo    CONNECT SERVER: %server%
echo.
echo. 
CScript //nologo %tmp%\ReadMail.vbs "%server%/mail.txt" 2>NUL
echo.
echo.
echo.
echo                   ÉÍÍÍÍÍÍÍ»
echo  Actualizar Chat: º ENTER º
echo                   ÈÍÍÍÍÍÍÍ¼
call:simwbols
Set /P "KIll=Escribe un mensaje:"
IF NOT DEFINED KILL Goto:Chat
IF /I ["%KILL%"]==["Value(0)"] set "VALUE=0" & Goto:Chat
IF /I ["%KILL%"]==["Value(1)"] set "VALUE=1" & Goto:Chat
IF /I ["%KILL%"]==["[exit]"] exit /B
set "KILL=%KILL:<=%"
set "KILL=%KILL:"=%"
set "KIL=%KILL:(=%"
set "KILL=%KILL:)=%"
Echo Sendding Message...
echo Please Wait...
Set /p"=> ..."<nul
CScript //nologo %tmp%\SendMail.vbs "%server%/mail.php?mail=" "%nick% Dice:"
CScript //nologo %tmp%\SendMail.vbs "%server%/mail.php?mail=" "%KILL%"
Goto:Chat
:::::::::::::::::::::::::::::::::
Rem cuarta linea
:simwbols
IF %VALUE% EQU 0 goto yesw
@(Echo.EB800:E60 "²"06
Echo.EB800:E62 "²"06
Echo.EB800:E64 "²"06
Echo.EB800:E66 "²"06
Echo.EB800:E68 "²"06
Echo.EB800:E6A "²"06
Echo.EB800:E6C "²"06
Echo.EB800:E6E "²"06
Echo.EB800:E70 "²"06
Echo.EB800:E72 "²"06
Echo.EB800:E74 "²"06
Echo.EB800:E76 "²"06
Echo.EB800:E78 "²"06
Echo.EB800:E7A "²"06
Echo.EB800:E7C "²"06
Echo.EB800:E7E "²"06
Echo.EB800:E80 "²"06
Echo.EB800:E82 "²"06
Echo.EB800:E84 "²"06
Echo.EB800:E86 "²"06
Echo.EB800:E88 "²"06
Echo.EB800:E8A "²"06
Echo.EB800:E8C "²"06
Echo.EB800:E8E "²"06
Echo.EB800:E90 "²"06
Echo.EB800:E92 "²"06
Echo.EB800:E94 "²"06
Echo.EB800:E96 "²"06
Echo.EB800:E98 "²"06
Echo.EB800:E9A "²"06
Echo.EB800:E9C "²"06
Echo.EB800:E9E "²"06
Echo.EB800:EA0 "²"06
Echo.EB800:EA2 "²"06
Echo.EB800:EA4 "²"06
Echo.EB800:EA6 "²"06
Echo.EB800:EA8 "²"06
Echo.EB800:EAA "²"06
Echo.EB800:EAC "²"06
Echo.EB800:EAE "²"06
Echo.EB800:EB0 "²"06
Echo.EB800:EB2 "²"06
Echo.EB800:EB4 "²"06
Echo.EB800:EB6 "²"06
Echo.EB800:EB8 "²"06
Echo.EB800:EBA "²"06
Echo.EB800:EBC "²"06
Echo.EB800:EBE "²"06
Echo.EB800:EC0 "²"06
Echo.EB800:EC2 "²"06
Echo.EB800:EC4 "²"06
Echo.EB800:EC6 "²"06
Echo.EB800:EC8 "²"06
Echo.EB800:ECA "²"06
Echo.EB800:ECC "²"06
Echo.EB800:ECE "²"06
Echo.EB800:ED0 "²"06
Echo.EB800:ED2 "²"06
Echo.EB800:ED4 "²"06
Echo.EB800:ED6 "²"06
Echo.EB800:ED8 "²"06
Echo.EB800:EDA "²"06
Echo.EB800:EDC "²"06
Echo.EB800:EDE "²"06
Echo.EB800:EE0 "²"06
Echo.EB800:EE2 "²"06
Echo.EB800:EE4 "²"06
Echo.EB800:EE6 "²"06
Echo.EB800:EE8 "²"06
Echo.EB800:EEA "²"06
Echo.EB800:EEC "²"06
Echo.EB800:EEE "²"06
Echo.EB800:EF0 "²"06
Echo.EB800:EF2 "²"06
Echo.EB800:EF4 "²"06
Echo.EB800:EF6 "²"06
Echo.EB800:EF8 "²"06
Echo.EB800:EFA "²"06
Echo.EB800:EFC "²"06
Echo.EB800:EFE "²"06
Echo.Q)|Debug>nul
:yesw
@(Echo.EB800:1E0 "²"06
Echo.EB800:1E2 "²"06
Echo.EB800:1E4 "²"06
Echo.EB800:1E6 "²"06
Echo.EB800:1E8 "²"06
Echo.EB800:1EA "²"06
Echo.EB800:1EC "²"06
Echo.EB800:1EE "²"06
Echo.EB800:1F0 "²"06
Echo.EB800:1F2 "²"06
Echo.EB800:1F4 "²"06
Echo.EB800:1F6 "²"06
Echo.EB800:1F8 "²"06
Echo.EB800:1FA "²"06
Echo.EB800:1FC "²"06
Echo.EB800:1FE "²"06
Echo.EB800:200 "²"06
Echo.EB800:202 "²"06
Echo.EB800:204 "²"06
Echo.EB800:206 "²"06
Echo.EB800:208 "²"06
Echo.EB800:20A "²"06
Echo.EB800:20C "²"06
Echo.EB800:20E "²"06
Echo.EB800:210 "²"06
Echo.EB800:212 "²"06
Echo.EB800:214 "²"06
Echo.EB800:216 "²"06
Echo.EB800:218 "²"06
Echo.EB800:21A "²"06
Echo.EB800:21C "²"06
Echo.EB800:21E "²"06
Echo.EB800:220 "²"06
Echo.EB800:222 "²"06
Echo.EB800:224 "²"06
Echo.EB800:226 "²"06
Echo.EB800:228 "²"06
Echo.EB800:22A "²"06
Echo.EB800:22C "²"06
Echo.EB800:22E "²"06
Echo.EB800:230 "²"06
Echo.EB800:232 "²"06
Echo.EB800:234 "²"06
Echo.EB800:236 "²"06
Echo.EB800:238 "²"06
Echo.EB800:23A "²"06
Echo.EB800:23C "²"06
Echo.EB800:23E "²"06
Echo.EB800:240 "²"06
Echo.EB800:242 "²"06
Echo.EB800:244 "²"06
Echo.EB800:246 "²"06
Echo.EB800:248 "²"06
Echo.EB800:24A "²"06
Echo.EB800:24C "²"06
Echo.EB800:24E "²"06
Echo.EB800:250 "²"06
Echo.EB800:252 "²"06
Echo.EB800:254 "²"06
Echo.EB800:256 "²"06
Echo.EB800:258 "²"06
Echo.EB800:25A "²"06
Echo.EB800:25C "²"06
Echo.EB800:25E "²"06
Echo.EB800:260 "²"06
Echo.EB800:262 "²"06
Echo.EB800:264 "²"06
Echo.EB800:266 "²"06
Echo.EB800:268 "²"06
Echo.EB800:26A "²"06
Echo.EB800:26C "²"06
Echo.EB800:26E "²"06
Echo.EB800:270 "²"06
Echo.EB800:272 "²"06
Echo.EB800:274 "²"06
Echo.EB800:276 "²"06
Echo.EB800:278 "²"06
Echo.EB800:27A "²"06
Echo.EB800:27C "²"06
Echo.EB800:27E "²"06
Echo.EB800:A0 "±"04
Echo.EB800:A2 "±"01
Echo.EB800:A4 "±"04
Echo.EB800:A6 "±"01
Echo.EB800:A8 "±"04
Echo.EB800:AA "±"01
Echo.EB800:AC "±"04
Echo.EB800:AE "±"01
Echo.EB800:B0 "±"04
Echo.EB800:B2 "±"01
Echo.EB800:B4 "±"04
Echo.EB800:B6 "±"01
Echo.EB800:B8 "±"04
Echo.EB800:BA "±"01
Echo.EB800:BC "±"04
Echo.EB800:BE "±"01
Echo.EB800:C0 "±"04
Echo.EB800:C2 "±"01
Echo.EB800:C4 "±"04
Echo.EB800:C6 "±"01
Echo.EB800:C8 "±"04
Echo.EB800:CA "±"01
Echo.EB800:CC "±"04
Echo.EB800:CE "C"2"h"2"a"2"t"2" "2"B"2"o"2"x"2" "2"2"2"."2"0"2" "2"B"2"Y"2" "2"S"2
Echo.EB800:F0 "e"2"g"2"a"2"d"2"o"2"r"2"f"2"e"2"l"2"i"2"x"02
Echo.EB800:106 "±"01
Echo.EB800:108 "±"04
Echo.EB800:10A "±"01
Echo.EB800:10C "±"04
Echo.EB800:10E "±"01
Echo.EB800:110 "±"04
Echo.EB800:112 "±"01
Echo.EB800:114 "±"04
Echo.EB800:116 "±"01
Echo.EB800:118 "±"04
Echo.EB800:11A "±"01
Echo.EB800:11C "±"04
Echo.EB800:11E "±"01
Echo.EB800:120 "±"04
Echo.EB800:122 "±"01
Echo.EB800:124 "±"04
Echo.EB800:126 "±"01
Echo.EB800:128 "±"04
Echo.EB800:12A "±"01
Echo.EB800:12C "±"04
Echo.EB800:12E "±"01
Echo.EB800:130 "±"04
Echo.EB800:132 "±"01
Echo.EB800:134 "±"04
Echo.EB800:136 "±"01
Echo.EB800:138 "±"04
Echo.EB800:13A "±"01
Echo.EB800:13C "±"04
Echo.EB800:13E "±"01
Echo.EB800:00 "±"04
Echo.EB800:02 "±"01
Echo.EB800:04 "±"04
Echo.EB800:06 "±"01
Echo.EB800:08 "±"04
Echo.EB800:A "±"01
Echo.EB800:C "±"04
Echo.EB800:E "±"01
Echo.EB800:10 "±"04
Echo.EB800:12 "±"01
Echo.EB800:14 "±"04
Echo.EB800:16 "±"01
Echo.EB800:18 "±"04
Echo.EB800:1A "±"01
Echo.EB800:1C "±"04
Echo.EB800:1E "±"01
Echo.EB800:20 "±"04
Echo.EB800:22 "±"01
Echo.EB800:24 "±"04
Echo.EB800:26 "±"01
Echo.EB800:28 "±"04
Echo.EB800:2A "±"01
Echo.EB800:2C "±"04
Echo.EB800:2E "±"01
Echo.EB800:30 "±"04
Echo.EB800:32 "±"01
Echo.EB800:34 "±"04
Echo.EB800:36 "±"01
Echo.EB800:38 "±"04
Echo.EB800:3A "±"01
Echo.EB800:3C "±"04
Echo.EB800:3E "±"01
Echo.EB800:40 "±"04
Echo.EB800:42 "±"01
Echo.EB800:44 "±"04
Echo.EB800:46 "±"01
Echo.EB800:48 "±"04
Echo.EB800:4A "±"01
Echo.EB800:4C "±"04
Echo.EB800:4E "±"01
Echo.EB800:50 "±"04
Echo.EB800:52 "±"01
Echo.EB800:54 "±"04
Echo.EB800:56 "±"01
Echo.EB800:58 "±"04
Echo.EB800:5A "±"01
Echo.EB800:5C "±"04
Echo.EB800:5E "±"01
Echo.EB800:60 "±"04
Echo.EB800:62 "±"01
Echo.EB800:64 "±"04
Echo.EB800:66 "±"01
Echo.EB800:68 "±"04
Echo.EB800:6A "±"01
Echo.EB800:6C "±"04
Echo.EB800:6E "±"01
Echo.EB800:70 "±"04
Echo.EB800:72 "±"01
Echo.EB800:74 "±"04
Echo.EB800:76 "±"01
Echo.EB800:78 "±"04
Echo.EB800:7A "±"01
Echo.EB800:7C "±"04
Echo.EB800:7E "±"01
Echo.EB800:80 "±"04
Echo.EB800:82 "±"01
Echo.EB800:84 "±"04
Echo.EB800:86 "±"01
Echo.EB800:88 "±"04
Echo.EB800:8A "±"01
Echo.EB800:8C "±"04
Echo.EB800:8E "±"01
Echo.EB800:90 "±"04
Echo.EB800:92 "±"01
Echo.EB800:94 "±"04
Echo.EB800:96 "±"01
Echo.EB800:98 "±"04
Echo.EB800:9A "±"01
Echo.EB800:9C "±"04
Echo.EB800:9E "±"01
Echo.Q)|Debug>nul
Goto:EOF
:HELP
Echo ChatBox 2.0 esta basado en el ChatBox de 3D1
Echo.
Echo Sintaxis: %0 [SERVIDOR] [NICK]
ECHO ejemplo: %0 Http://name.webcindario.com USUArio
echo.
echo Copyright 2012 ¸ segadorfelix
Exit /B

rem **********************************************************
~~~

~~~
rem *********** buscar en archivos*******************
@echo off
set/p find=Escribe el patron de busqueda de los archivos
rem Crea un archivo llamado "informe.txt" en el Escritorio del usuario actual
echo. > %userprofile%\Desktop\Informe.txt

rem Y ahora recorrera todas las unidades del sistema buscando archivos que
rem coincidan con el patron
for %%A IN (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) DO (
   if exist %%A:\ (

      rem cambiar la unidad actual y el directorio actual
      cd /D %%A:\
     
      rem Ahora que ya estoy en la nueva unidad del sistema operativo, busco archivos
      rem podemos usar el siguiente comando o el que esta dos lineas mas abajo
      for /R %%E IN (*%find%) DO echo %%E >> %userprofile%\Desktop\Informe.txt
    
      rem Este es mas sencillo
      rem dir /s "find" >> %userprofile%\Desktop\Informe.txt

      )
)

pause
rem ****************************************************
~~~

~~~
rem ********** paso de argumentos ******************
@echo off
echo hola %1 %2 %3 %4 %5 
echo Enter para salir ...
pause > null
rem **************************************************
~~~

~~~
rem ********* apaga PC ***********************+*******
@echo off
cls
echo Se va a apagar el ordenador. Introduzca los segundos:
set /p seg=
echo Mensaje que se mostrara:
set /p mens=
shutdown -s -t %seg% -c "%mens%"
rem ********************************************
~~~

~~~
rem ********** ver nombre usuario **********************
@echo off
color 0a
title Programando en Batch MS-DOS
cls
rem aqui voya acolocar las variables
set nombre=%username%
echo Enter para continuar...
pause > null
:bienvenida
echo Bienvenido %nombre%
rem ***************************************************
~~~

~~~
rem ***************menu*******************************
@echo off
Title Menu del sistema
color 0a
cls
:miMenu
echo  [   Menu ]  
echo 1. Java ejemplos
echo 2. Groovy ejemplos
echo 3. Scala ejemplos
echo 4. Clojure ejemplos
echo 5. Ceylon ejemplos
echo 6. Ir a carpeta Django
echo 7. Python ejemplos
echo 8. Mandar un ping
echo 9. Salir
set /p choic=Teclea alguna opcion 

if %choic%==1 goto miJava
if %choic%==2 goto miGroovy
if %choic%==3 goto miScala
if %choic%==4 goto miClojure
if %choic%==5 goto miCeylon
if %choic%==6 goto miServidor
if %choic%==7 goto miPython
if %choic%==8 goto miPing
if %choic%==9 goto miSalida


:miJava
start cmd
cd C:\Users\Uriel\Documents\Programas\Ejemplos
dir
goto miMenu

:miGroovy
start cmd
cd C:\Users\alguien\Documents\Programas\Groovy
dir
goto miMenu

:miScala
start cmd
cd C:\Users\alguien\Documents\Programas\Scala
dir
goto miMenu

:miClojure
start cmd
cd C:\clojure-1.4.0
dir
goto miMenu

:miCeylon
start cmd
cd C:\ceylon-0.4\samples
dir
goto miMenu


:miServidor
start cmd
cd ..
cd C:\Python27\Django-1.4\django\bin
dir
goto miMenu


:miPing
start cmd
ping www.google.com.mx
goto miMenu


:miPython
start cmd
cd ..
cd C:\Users\alguien\Documents\Programas\Python
dir
goto miMenu


:miSalida
goto elFin

:elFin
exit
rem ************************************************
~~~
