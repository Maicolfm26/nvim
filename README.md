# nvim

Para instalar pluggins necesitamos de un gestor este lo instalamos con:

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

En el archivo de .init para agregar los pluggins pondremos:

call plug#begin()

Plug 'preservim/NERDTree' //nombre del pluggin 

call plug#end()

guardamos el archivo de configuracion con espacio + w y lo recargamos con :so %

Y para Instalar el pluggin pondremos:

:PlugInstall

Y eso es todo.
