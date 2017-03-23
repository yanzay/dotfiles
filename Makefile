PWD := $(shell pwd)

install:
	ln -fs $(PWD)/vimrc ~/.vimrc
	ln -fs $(PWD)/gitconfig ~/.gitconfig

