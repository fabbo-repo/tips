[Apoyo](https://gitexplorer.com)
---------------------------------
### Extensión de git para VSCode:
> Git Graph

---------------------------------
### Usar algoritmo SHA1 con git:
~~~
echo "<contenido>" | git hash-object --stdin 
~~~
***contenido*** se refiere a lo que se desea hashear

---------------------------------
### Iniciar seguimiento de ficheros en el proyecto o directorio actual	(área de ensayo)
~~~
git init
~~~
Este comando crea la carpeta ***.git***

---------------------------------
### Hacer seguimiento de solo un fichero o directorio	(área de ensayo)
~~~
git add <path>
~~~
***path*** se refiere a la ruta del fichero o directorio

---------------------------------
### Trasladar los archivos/ficheros del área de ensayo al repositorio local con descripción
~~~
git commit -m "<mensaje>"
~~~

### Ejecutar add y commit a la vez
~~~
git commit -a -m "mensaje"
~~~

### Editar descripción del último commit
~~~
git commit --amend
~~~

### Ver listado de commits y sus datos (hashes incluidos)
~~~
git log
~~~

### Ver listado de commits y tags en el repositorio local
~~~
git log --oneline
~~~

### Ver datos de un commit:
~~~
git cat-file -p <hash_commit>
~~~

### Regresar a un commit previo
~~~
git reset --hard <id>
~~~
Siendo ***id*** el identificador del commit, se puede ver con:
~~~
git log --oneline
~~~
  
---------------------------------
### Ver archivos y directorios que no están en commit, y si están cometidos a seguimiento por git
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
git remote add origin <url>
~~~
***url*** se refiere al enlace del repositorio ubicado en remoto

---------------------------------
### Crear rama adicional
~~~
git branch <nombre>
~~~

### Cambiar el nombre de la rama
~~~
git branch [-m|-M] [<viejo_nombre>] <nuevo_nombre>
~~~

### Listar ramas
~~~
git branch 
~~~

---------------------------------
### Cambiar de rama
~~~
git checkout <nombre>
~~~

---------------------------------
### Hacer merge de una rama a la que estás ubicado actualmnte
~~~
git merge <nombre>
~~~

---------------------------------
### Crear una tag
~~~
git tag <nombre> -m "desc"
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
git clone <url>
~~~
***url*** se refiere al enlace del repositorio ubicado en remoto
