UNAME := $(shell uname)

all: basic web_server config
	@echo "done"

config:
	cp -r ./.* ~/

basic:
	sudo apt-get install vim git screen

web_server:
	sudo apt-get update
	sudo apt-get install apache2

php:
	sudo apt-get install php5 php5-cli libapache2-mod-php5 php5-mcrypt

vim:
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	cp .vimrc ~/
	vim +PluginInstall +qall
