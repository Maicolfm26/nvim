set title  " Muestra el nombre del archivo en la ventana de la terminal
set number  " Muestra los números de las líneas
set mouse=a " Permite la integración del mouse (seleccionar texto, mover el cursor)
set nowrap  " No dividir la línea si es muy larga
set cursorline  " Resalta la línea actual
set hidden  " Permitir cambiar de buffers sin tener que guardarlos
set ignorecase  " Ignorar mayúsculas al hacer una búsqueda
set smartcase  " No ignorar mayúsculas si la palabra a buscar contiene mayúsculas
set numberwidth=1
set clipboard=unnamedplus  " Nos permite copiar al portapapeles
syntax enable
set showcmd
set ruler
set encoding=UTF-8
set showmatch  " para resaltar el corchete de cierre
set relativenumber  " ponemos los numeros relativos para poder movernos con mas facilidad
set splitright  " para abrir un archivo en una ventana dividido verticalmente a la derecha
set autoindent

call plug#begin('~/.vim/plugged')
" Temas
Plug 'tomasr/molokai'
" IDE
Plug 'easymotion/vim-easymotion' "para hacer busquedas con espacio + s
Plug 'scrooloose/nerdtree' "Plugin para el gestor de archivos
Plug 'christoomey/vim-tmux-navigator' "Para poder navegar entre las ventanas o terminales
Plug 'preservim/nerdcommenter' "Para comentar con espacio + cc o descomentar con espacio + cu
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'
Plug 'majutsushi/tagbar'
call plug#end()

"configuracion de tema
let g:rehash256 = 1
let g:molokai_original = 1
colorscheme molokai

"configuracion de gestor de archivos
let NERDTreeQuitOnOpen=1
let mapleader=" "

"configuracion de airline
source $HOME/.vim/themes/airline.vim
set laststatus=2
set t_Co=256

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>wq :wq<CR>
nmap <S-t> :vnew<CR>:term<CR>
nmap <leader>lt :TagbarToggle<CR>

nnoremap <leader>e :e $MYVIMRC<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
tnoremap <Esc> <C-\><C-n>
