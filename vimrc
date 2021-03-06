set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'fatih/vim-go'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'flazz/vim-colorschemes'
if has('nvim')
  Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plugin 'zchee/deoplete-go'
else
  Plugin 'Shougo/neocomplete.vim'
endif
Plugin 'moll/vim-node'
Plugin 'mephux/vim-jsfmt'
call vundle#end()            " required

filetype plugin indent on    " required
syntax enable

color jellybeans
set guifont=Consolas:h18
set number
set relativenumber
set vb
set expandtab
set cursorline
set cursorcolumn
set t_vb=

set tabstop=2
set shiftwidth=2
set softtabstop=2

let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:js_fmt_autosave = 1
let g:js_fmt_command = "jsfmt"

if has('nvim')
  let g:deoplete#enable_at_startup = 1
else
  let g:neocomplete#enable_at_startup = 1
endif

let NERDTreeChDirMode=2
map <C-r> :e ~/.vimrc<CR>
map <F2> :NERDTreeToggle<CR>
map <D-p> :CtrlP<CR>
inoremap <D-CR> <ESC>o
inoremap <D-S-CR> <ESC>O

inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

au BufNewFile,BufRead *.jbuilder set ft=ruby

