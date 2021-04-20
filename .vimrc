set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Nerdtree
Plugin 'preservim/nerdtree'

" Gruvbox color scheme
Plugin 'morhetz/gruvbox'

call vundle#end()

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" true color support
set termguicolors

" Configure Gruvbox italics
let g:gruvbox_italic=1

" Enable Gruvbox color scheme
autocmd vimenter * ++nested colorscheme gruvbox

set background=dark    " Setting dark mode

" line numbers
set number

" highlight syntax
syntax on

" replace tabs with four spaces
set tabstop=4 shiftwidth=4 expandtab

" autoindent
set ai
set si
inoremap { {<CR>}<Esc>O
