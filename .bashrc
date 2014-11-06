# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Server List
DMCC_SERVER="dmccstation@unix.it.nctu.edu.tw"
DMCC="140.113.172.164"
MAPLE="106.186.30.79"
RUN="runway@140.113.180.83"
VM="root@192.168.63.128"

# Environment Settings
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG="zh_TW.UTF-8"

WORDS="\"CREATE SOMETHING PEOPLE WANT\""
NAME="Heron Yang"
export PS1='\[\e[0;33m\]\u@\H \[\e[1;34m\]\w \[\e[1;30m\]'$WORDS' \[\e[0;30m\]Heron Yang\n\[\e[0;91m\]>> \[\e[0;32m\]\[\e[0;32m\]'

# Setting up the color on Mac
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
force_color_prompt=yes

# Key Binding
bind '"\C-s": "fg\n"'

# Shortcuts
alias s='screen -RR'
alias i='irssi'
alias f='fg'
alias j='jobs'

alias mysqlstart='sudo /usr/local/mysql/support-files/mysql.server start'
alias mysqlstop='sudo /usr/local/mysql/support-files/mysql.server stop'

## PATH ##
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=${PATH}:/Applications/Android\ Studio.app/sdk/tools
#export PATH=/opt/local/bin:/opt/local/sbin:$PATH                                # macprots
#export PATH=/usr/local/lib/python2.7/site-packages/django/bin:$PATH             # add django path
#export PATH=/Users/heron/Program/8051/sdcc/bin:$PATH
#export PATH=/Users/heron/Program/rabbitmq_server-3.2.2/sbin:$PATH
#BIN_DIR=/usr/local/share/python/                                                # python
#export PATH=$BIN_DIR:$PATH
#export PATH=~/Hack/john-the-ripper/john-1.7.6-jumbo-12-macosx-Intel-1/run:$PATH # add john the ripper
export PATH="/usr/local/heroku/bin:$PATH"                                       # Added by the Heroku Toolbelt
export PATH="/usr/local/mysql/bin/:/usr/local/mysql/support-files/:$PATH"       # mysql
export PATH=/usr/local/php5/bin:$PATH                                           # php
export PATH=/Library/Developer/CommandLineTools/usr/bin/:$PATH

export PYTHONPATH=/usr/local/lib/python2.7/site-packages/:

## Bash Completion ##
if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
  . /opt/local/etc/profile.d/bash_completion.sh
fi

##
# Your previous /Users/heron/.bash_profile file was backed up as /Users/heron/.bash_profile.macports-saved_2014-10-18_at_14:47:42
##

# MacPorts Installer addition on 2014-10-18_at_14:47:42: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

