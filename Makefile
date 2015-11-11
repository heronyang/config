UNAME := $(shell uname)

all: setup
	@echo "done"

setup:
	git submodule init
	git submodule update

web_server:
	sudo apt-get update
	sudo apt-get install apache2

php:
	sudo apt-get install php5 php5-cli libapache2-mod-php5 php5-mcrypt

vim:
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	cp .vimrc ~/
	vim +PluginInstall +qall
