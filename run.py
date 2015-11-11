#!/usr/bin/python

import os, platform
import json
import argparse

from IPython.core.debugger import Tracer

from pprint import pprint
from subprocess import call

OS = os.name
SYSTEM = platform.system()
CONFIG_FILE_DEFAULT_PATH = "config.json"

parser = argparse.ArgumentParser(description="Environment Configuration Tool")
parser.add_argument('-i', '--input',
        help="set filepath of the config file (default to " + CONFIG_FILE_DEFAULT_PATH +")",
        type=argparse.FileType('r'),
        default=CONFIG_FILE_DEFAULT_PATH)
args = parser.parse_args()

def permission_check():
    if os.getuid() != 0:
        print 'Please execute with root pervilege.'
        os._exit(1)

def read_config_file():
    print '> read confie file from: ' + args.input.name
    with args.input as config_file:
        config = json.load(config_file)

    return config

def install_packages(config):
# Mac OS X
    if SYSTEM == 'Darwin':
        install_packages(config)

def install_packages(config):
    print '> your deployeed os: ' + SYSTEM
    call(["port", "install"] + config["packages"])

if __name__ == "__main__":

# setup
    permission_check()

    config = read_config_file()

# run
    install_packages(config)

# end
    print 'done.'
