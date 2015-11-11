#!/usr/bin/python

import os, platform
import json
import argparse
import getpass

from IPython.core.debugger import Tracer

from pprint import pprint
from subprocess import call
from os.path import expanduser

PROMPT = '>> '

OS = os.name
SYSTEM = platform.system()
DIST = platform.dist()[0]
CONFIG_FILE_DEFAULT_PATH = 'config.json'

parser = argparse.ArgumentParser(description='Environment Configuration Tool')
parser.add_argument('-i', '--input',
        help='set filepath of the config file (default to ' + CONFIG_FILE_DEFAULT_PATH +')',
        type=argparse.FileType('r'),
        default=CONFIG_FILE_DEFAULT_PATH)
args = parser.parse_args()

def call_decorator(cmd):
    print PROMPT  + ' '.join(map(str, cmd))
    call(cmd)

def permission_check():
    if os.getuid() == 0:
        print 'Please don\'t execute with root pervilege.'
        os._exit(1)

def read_config_file():
    print PROMPT + 'read confie file from: ' + args.input.name
    with args.input as config_file:
        config = json.load(config_file)

    return config

def install_packages(config):
# Mac OS X
    if SYSTEM == 'Darwin':
        install_packages_mac(config)
    elif SYSTEM == 'Linux':
        if DIST == 'Ubuntu':
            install_packages_ubuntu(config)

def install_packages_mac(config):
    print PROMPT + 'your deployeed os: ' + SYSTEM
    call_decorator(['sudo', 'port', 'install'] + config['packages'])

def install_packages_ubuntu(config):
    print PROMPT + 'your deployeed os: ' + SYSTEM
    username = getpass.getuser()
    call_decorator(['sudo', 'apt-get', 'install', '-y'] + config['packages'])

def deploy_rc_files(config):
    home = expanduser("~")
    for rc_file in config['rc_files']:
        call_decorator(['cp', '-ri', rc_file, home])

def exec_commands(config):
    for cmd in config['commands']:
        call_decorator(cmd.split(' '))

if __name__ == '__main__':

# setup
    permission_check()
    config = read_config_file()

# run
    install_packages(config)
    deploy_rc_files(config)
    exec_commands(config)

# end
    print 'done.'
