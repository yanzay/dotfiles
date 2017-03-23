set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'fatih/vim-go'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'flazz/vim-colorschemes'
Plugin 'Shougo/deoplete.nvim'
Plugin 'zchee/deoplete-go'
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

set tabstop=2
set shiftwidth=2
set softtabstop=2

let $GOPATH="/home/yanzay/go"

let g:go_fmt_command = "goimports"
" let g:go_highlight_functions = 1
" let g:go_highlight_methods = 1
" let g:go_highlight_structs = 1
" let g:go_fmt_fail_silently = 1

let NERDTreeChDirMode=2
map <C-r> :e ~/.vimrc<CR>
map <F2> :NERDTreeToggle<CR>
map <D-p> :CtrlP<CR>
inoremap <D-CR> <ESC>o
inoremap <D-S-CR> <ESC>O

" set lines=999 columns=9999

au BufNewFile,BufRead *.jbuilder set ft=ruby

