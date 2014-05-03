# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
WORDS="The time is passing."
export PS1='\[\e[0;34m\][\@]\[\e[1;33m\]\u@\H \[\e[0;94m\]\w \[\e[4;35m\]'$WORDS'\n\[\e[0;91m\]>> \[\e[0;32m\]\[\e[0;32m\]'

# Setting up the color on Mac
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PATH=/usr/local/bin:$PATH

VM_IP="192.168.56.101"
export PYTHONPATH=/usr/local/lib/python2.7/site-packages/:

DMCC_SERVER="dmccstation@unix.it.nctu.edu.tw"

#bind -x '"\C-x"':"fg" # ALT+Z
bind '"\C-s": "fg\n"'

export PATH=${PATH}:/Applications/Android\ Studio.app/sdk/tools

force_color_prompt=yes

alias s='screen -RR'

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

MAPLE="106.186.30.79"
X200="192.168.0.132"

##
# Your previous /Users/heron/.bash_profile file was backed up as /Users/heron/.bash_profile.macports-saved_2013-08-20_at_16:22:37
##

# MacPorts Installer addition on 2013-08-20_at_16:22:37: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH=/usr/local/bin:$PATH

# add appengine commands
#export PATH=/Users/heron/Program/appengine/google_appengine:$PATH
export PATH=~/sat/bin:$PATH
DMCC="140.113.172.164"

# add django path
export PATH=/usr/local/lib/python2.7/site-packages/django/bin:$PATH

# vm ip address
export VM="-p 3022 127.0.0.1"

BIN_DIR=/usr/local/share/python/
export PATH=$BIN_DIR:$PATH

export PATH=/Users/heron/Program/8051/sdcc/bin:$PATH
export PATH=/Users/heron/Program/rabbitmq_server-3.2.2/sbin:$PATH

export PATH=/usr/local/sbin:$PATH

export COURSE="/Users/heron/Google Drive/Courses/"

if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
  . /opt/local/etc/profile.d/bash_completion.sh
fi

# added by Anaconda 1.9.1 installer
export PATH="/Users/heron/anaconda/bin:$PATH"

alias i='irssi'

# char encode
export LANG="zh_TW.UTF-8"
#export LC_ALL="zh_TW.UTF-8"
