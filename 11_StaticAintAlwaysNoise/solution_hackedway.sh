#!/bin/bash
source ../commons.sh

# if the flag is in the .text section of the binary, it should be in clear text 
download https://mercury.picoctf.net/static/ec4dbd8898ade34e1d60d5b70c1b8c8c/static | grep -a pico
