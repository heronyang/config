all: basic web_server config
	@echo "done"

config:
	cp -r ./.* ~/

basic:
	sudo apt-get install vim git screen

web_server:
	sudo apt-get update
	sudo apt-get install apache2 php5-cli
