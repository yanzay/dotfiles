PWD := $(shell pwd)

install: vim
	ln -fs $(PWD)/gitconfig ~/.gitconfig
	ln -fs $(PWD)/zshrc ~/.zshrc

vim: vimrc
	ln -fs $(PWD)/vimrc ~/.vimrc
	mkdir -p ~/.config
	ln -fs ~/.vim ~/.config/nvim
	ln -fs $(PWD)/vimrc ~/.config/nvim/init.vim
