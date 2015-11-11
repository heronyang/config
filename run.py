#!/usr/bin/python

import os, platform
import json
import argparse

from IPython.core.debugger import Tracer

from pprint import pprint
from subprocess import call

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

def permission_check():
    if os.getuid() != 0:
        print 'Please execute with root pervilege.'
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
    call(['port', 'install'] + config['packages'])

def install_packages_ubuntu(config):
    print PROMPT + 'your deployeed os: ' + SYSTEM
    call(['apt-get', 'install', '-y'] + config['packages'])

def deploy_rc_files(config):
    for rc_file in config['rc_files']:
        call(['cp', '-ri', rc_file])

if __name__ == '__main__':

# setup
    permission_check()
    config = read_config_file()

# run
    install_packages(config)
    deploy_rc_files(config)

# end
    print 'done.'
