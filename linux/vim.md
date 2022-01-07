# Reemplazar un string por otro:

* Primera ocurrencia
  ~~~
  :%s/string_antiguo/string_nuevo/g
  ~~~

* En todas la línea actual
  ~~~
  :%s/string_antiguo/string_nuevo/
  ~~~

----------------------------------
# Cambiar esquema de colores

**Favorito: mojave**

* Clonar repositorio
  ~~~
  git clone <repositorio>
  ~~~
  > **Ejemplos de respositorios:**
  > * Esquema de mojave: https://github.com/marcopaganini/mojave-vim-theme.git
  > * Esquema de nirvana: https://github.com/duckwork/nirvana.git
  
* Moverlo al direcyotio colors de vim
  ~~~
  sudo mv <path_repositorio>/<esquema>.vim  /usr/share/vim/vimXX/colors/
  ~~~
  > ***Nota:*** En XX va la versión de vim

* Abrir vim y cambiar el esquema de colores
  ~~~
  :colorscheme <esquema>
  ~~~
  
* Editar ***vimrc***
  ~~~
  sudo vim /etc/vim/vimrc
  ~~~
  
* Añadir lo siguiente
  > colorscheme \<esquema>\
  > syntax on
