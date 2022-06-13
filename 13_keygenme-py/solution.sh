#!/bin/bash
source ../commons.sh

tmp_folder=tmp
tmp_script="$tmp_folder/script.py"

mkdir "$tmp_folder"
download https://mercury.picoctf.net/static/fb75b48f9214cf992a2199b5785564e7/keygenme-trial.py > "$tmp_script"

# After analyzing the script I've came up with a script to obtain the license
# key of the game which is actually the flag! Kaboom!
python get_key.py

rm -rf "$tmp_folder"