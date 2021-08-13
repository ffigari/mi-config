call plug#begin()
Plug 'jiangmiao/auto-pairs'  " Paréntesis que cierran solas
Plug 'tpope/vim-surround'  " Acomodador de paréntesis
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

" Configuración para soft-tabs
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab
" Permitir moverse de buffers sin guardar
set hidden
" Marca de los 80 carácteres
set colorcolumn=81
" Activar número de línea en la línea actual
set nu
" Activar números relativos para el resto de las líneas
set relativenumber
" Mostar de manera distintiva los tabs
set list
set listchars=tab:>-
" Desactivar volver al principio de línea luego de algunos comandos
set nosol
" Abrir splits de una manera más natural
set splitbelow
set splitright
" Para poder copiar al clipboard del sistema
" En el caso de manjaro (arch) hay que instalar `gvim`
" https://vi.stackexchange.com/questions/3076/how-do-i-use-the-system-clipboard-with-vim-in-arch-linux
set clipboard=unnamed
" Folding
set foldmethod=indent
set nofoldenable
set foldlevel=2
" Para evitar que se redibuje la pantalla mientras se corre un macro
set lazyredraw
" Mostrar siempre la barra de arriba con los nombres de los archivos
set showtabline=2

noremap ñ l
noremap l k
noremap k j
noremap j h

noremap <C-ñ> <C-w><C-l>
noremap <C-l> <C-w><C-k>
noremap <C-k> <C-w><C-j>
noremap <C-j> <C-w><C-h>

let mapleader=' '
nnoremap <Leader>f :GFiles<CR>
nnoremap <Leader>.f :Files<CR>
vnoremap <Leader>r "zy:%s/\<<C-r>z\>/<C-r>z/g<left><left>
vnoremap <Leader>s "zy:Ag <C-r>z<CR>
nnoremap <Leader>h :set hlsearch!<CR>

set wildignore+=*/node_modules/*,*/dist/*,*/.git/*
