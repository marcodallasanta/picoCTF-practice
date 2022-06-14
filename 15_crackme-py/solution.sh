#!/bin/bash
source ../commons.sh

tmp_folder=tmp
tmp_script="$tmp_folder/script.py"


mkdir "$tmp_folder"
download https://mercury.picoctf.net/static/2ff6c888060f14af5db1232e319547c9/crackme.py > "$tmp_script"

# To be honest I don't get if this was the right way to solve it
head -n -2 "$tmp_script" > temp.txt && mv temp.txt "$tmp_script"
echo "decode_secret(bezos_cc_secret)" >> "$tmp_script"
python "$tmp_script"
# rm -rf "$tmp_folder"