### Extensión de git para VSCode:
> Git Graph

---------------------------------
### Iniciar monitorización y seguimiento de ficheros en el proyecto actual	(área de ensayo)
~~~
git init
~~~
Este comando crea la carpeta ***.git***

---------------------------------
### Hacer monitorización y seguimiento de solo un fichero o directorio		(área de ensayo)
~~~
git add path
~~~
***path*** se refiere a la ruta del fichero o directorio

---------------------------------
### Trasladar los archivos/ficheros del área de ensayo al repositorio local con descripción
~~~
git commit -m "desc"
~~~
***"desc"*** hace referencia a la descripción del commit

---------------------------------
### Ejecutar add y commit a la vez
~~~
git commit -am "desc"
~~~

---------------------------------
### Editar descripción de un commit
~~~
git commit --amend
~~~

---------------------------------
### Ver listado de commits y tags en el repositorio local
~~~
git log --oneline
~~~

---------------------------------
### Regresar a un commit previo
~~~
git reset --hard id
~~~
Siendo ***id*** el identificador del commit, se puede ver con:
~~~
git log --oneline
~~~
  
---------------------------------
### Ver archivos y directorios que no están en el repositorio en la carpeta del proyectos, y si están cometidos a seguimiento por git
~~~
git status -s
~~~

---------------------------------
### Añadir usuario y correo a la configuración:
~~~
git config --global user.username "Nombre" user.mail "ejemplo@gmal.com"
~~~
***Nombre*** se refiere al nombre de usuario y ***ejemplo@gmail.com*** al correo

---------------------------------
### Añadir lo que se encuentra en el repositorio local a github
~~~
git remote add origin https://github.com/FabboBox/VSTestRepo.git
~~~

---------------------------------
### Crear una rama main
~~~
git branch -M nombre
~~~
***nombre*** hace referencia al nombre de la rama

---------------------------------
### Crear rama adicional
~~~
git branch nombre 
~~~

---------------------------------
### Listar ramas
~~~
git branch 
~~~

---------------------------------
### Cambiar de rama
~~~
git checkout nombre
~~~

---------------------------------
### Hacer merge de una rama a la que estás ubicado actualmnte
~~~
git merge nombre
~~~

---------------------------------
### Crear una tag
~~~
git tag nombre -m "desc"
~~~
***nombre*** hace referencia al nombre de la tag y ***"desc"*** hace referencia a la descripción del commit

---------------------------------
### Subir tag
~~~
git push --tags
~~~

---------------------------------
### Clonar repositorio a local
~~~
git clone url
~~~
***url*** se refiere al enlace del repositorio ubicado en remoto
