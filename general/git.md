# ENLACE: [Apoyo](https://gitexplorer.com)

---------------------------------
### Extensión de git para VSCode:
> Git Graph

---------------------------------
### Evitar inserción de saltos de líneas en windows:
~~~
git config --global core.autocrlf false
~~~

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

### Traer los cambios de un commit especifico
~~~
git checkout <hash_commit>
~~~
Es útil para olvidar algunos commit (se le suele denominar "detach head")
> **NOTA:** Si se hace checkout a un commit antiguo y los commit que van después no están en ninguna rama, serán eliminados por el *garbage collector*

### Ver archivos y directorios que no están en commit, y si están cometidos a seguimiento por git
~~~
git status -s
~~~

---------------------------------
### Llevar los commits de la rama actual desde la base (commit relacionado con la otra rama) sobre otra rama:
~~~
git rebase <nombre_rama>
~~~
Es como un *merge*, la diferencia recae en que la rama actual apunta a los nuevos commits sobre la otra rama y que se recrean todos los commits desde la base
**NOTA:** si la otra rama tiene como base la rama actual, al hacer *rebase* simplemente se actualizan los commits con los de la otra rama 

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
git branch <nombre_rama>
~~~

### Cambiar el nombre de la rama
~~~
git branch [-m|-M] [<viejo_nombre_rama>] <nuevo_nombre_rama>
~~~

### Listar ramas
~~~
git branch 
~~~

### Cambiar de rama
~~~
git checkout <nombre_rama>
~~~
o
~~~
git switch <nombre_rama>
~~~
Para este caso funcionan igual, pero sus opciones son distintas

---------------------------------
### Hacer merge de una rama a la que estás ubicado actualmnte
~~~
git merge <nombre_rama>
~~~

---------------------------------
### Listar tags
~~~
git tag
~~~

### Crear una tag
~~~
git tag <nombre_tag>
~~~

### Crear una tag anotada con mensaje
~~~
git tag <nombre_tag> -a -m "<descripcion>"
~~~
***nombre_tag*** suele ser del estilo v0.1.1 por ejemplo

### Subir tag
~~~
git push --tags
~~~

---------------------------------
### Traer los cambios de un repositorio remoto
~~~
git fetch
~~~
Creará una rama adicional (origin/<nombre_rama>), luego se puede hacer un merge con dicha rama
~~~
git merge origin/<nombre_rama>
~~~
O bien esos dos comandos ejecutarlos con:
~~~
git pull
~~~

---------------------------------
### Clonar repositorio remoto a local
~~~
git clone <url>
~~~
***url*** se refiere al enlace del repositorio ubicado en remoto
