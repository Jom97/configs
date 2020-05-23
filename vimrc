source $VIMRUNTIME/defaults.vim

"Download and install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'preservim/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'


call plug#end()

" My Settings
set laststatus=2
set termguicolors
let g:gruvbox_italic=1
let g:lightline = {
      \ 'colorscheme': 'default',
      \ }
colorscheme gruvbox
set background=dark
set noshowmode

set number relativenumber
set hlsearch
set ignorecase smartcase
set cursorline
set mouse=a
set splitbelow splitright
