# nvim

Para instalar pluggins necesitamos de un gestor este lo instalamos con:

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

En el archivo de .init ubicado en(~/.config/nvim/init.vim) para agregar los pluggins pondremos:

call plug#begin()

Plug 'preservim/NERDTree' //nombre del pluggin 

call plug#end()

guardamos el archivo de configuracion con espacio + w y lo recargamos con :so %

Y para Instalar el pluggin pondremos:

:PlugInstall

Y eso es todo.

Para los iconos hay que instalar una fuente:

mkdir -p ~/.local/share/fonts

cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf

para los estilos de airline, esto debe de ir en(~/.vim/themes/airline.vim):

" enable tabline

let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#left_sep = ''

let g:airline#extensions#tabline#left_alt_sep = ''

let g:airline#extensions#tabline#right_sep = ''

let g:airline#extensions#tabline#right_alt_sep = ''

" enable powerline fonts

let g:airline_powerline_fonts = 1

let g:airline_left_sep = ''

let g:airline_right_sep = ''

" Switch to your current theme

let g:airline_theme = 'bubblegum'

" Always show tabs

set showtabline=2

" We don't need to see things like -- INSERT -- anymore

set noshowmode

Para instalar ctags:

sudo apt install universal-ctags
