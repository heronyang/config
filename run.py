#!/usr/bin/python

import json
import argparse

parser = argparse.ArgumentParser(description="Environment Configuration Tool")
parser.add_argument('--input', type=argparse.FileType('r'))

def read_config_file():
    with open('config.json') as config_file:
        config = json.load(config_file)
    pprint(config)

if __name__ == "__main__":
    print parser
    read_config_file()
