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
# Usar esquema de colores de nirvana

* Clonar repositorio de nirvana 
  ~~~
  git clone https://github.com/duckwork/nirvana.git
  ~~~
  
* Moverlo al direcyotio colors de vim
  ~~~
  sudo mv nirvana/colors/nirvana.vim  /usr/share/vim/vimXX/colors/
  ~~~
  > ***Nota:*** En XX va la versión de vim

* Abrir vim y cambiar el esquema de colores
  ~~~
  :colorscheme nirvana
  ~~~
  
* Editar ***vimrc***
  ~~~
  sudo vim /etc/vim/vimrc
  ~~~
  
* Añadir lo siguiente
  > colorscheme nirvana\
  > syntax on
