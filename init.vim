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
set encoding=utf-8  " Indicamos la tipografia en este utf-8
set showmatch  " para resaltar el corchete de cierre
set relativenumber  " ponemos los numeros relativos para poder movernos con mas facilidad
set laststatus=2
set splitright  " para abrir un archivo en una ventana dividido verticalmente a la derecha

call plug#begin('~/.vim/plugged')

"Temas

Plug 'morhetz/gruvbox'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1
set background=dark

let NERDTreeQuitOnOpen=1

let mapleader=" "

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>wq :wq<CR>

map <S-t> :vert :term<CR>
nnoremap <leader>e :e $MYVIMRC<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>  
