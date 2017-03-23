PWD := $(shell pwd)

install: vims
	ln -fs $(PWD)/gitconfig ~/.gitconfig
	ln -fs $(PWD)/zshrc ~/.zshrc

vims: vimrc
	ln -fs $(PWD)/vimrc ~/.vimrc
	mkdir -p ~/.config
	ln -fs ~/.vim ~/.config/nvim
	ln -fs $(PWD)/vimrc ~/.config/nvim/init.vim
	vim +PluginInstall +qall
	nvim +PluginInstall +qall
