#!/bin/bash
source ../commons.sh

pwd=$(download https://mercury.picoctf.net/static/0bf545252b5120845e3b568b9ad0277e/pw.txt)
tmp_dir="tmp"
flag_file="$tmp_dir/flag"
python_script="$tmp_dir/script.py"

mkdir "$tmp_dir" &&
download https://mercury.picoctf.net/static/0bf545252b5120845e3b568b9ad0277e/ende.py > "$python_script"
download https://mercury.picoctf.net/static/0bf545252b5120845e3b568b9ad0277e/flag.txt.en > "$flag_file" && 
echo "$pwd" | python "$python_script" -d "$flag_file";
rm -rf "$tmp_dir" 