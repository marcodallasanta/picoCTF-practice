#!/bin/bash
source ../commons.sh

tmp_folder=tmp
tmp_file="$tmp_folder/enc_flag"



mkdir "$tmp_folder" &&
download "https://mercury.picoctf.net/static/e47483f88b12f2ab0c46315afc12f64d/enc" > "$tmp_file" &&
python ./decrypt.py "$(cat $tmp_file)"
rm -rf "$tmp_folder"
  