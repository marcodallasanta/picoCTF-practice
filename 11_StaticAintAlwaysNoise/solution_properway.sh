#!/bin/bash
source ../commons.sh

tmp_folder=tmp
tmp_binary="$tmp_folder/binary"
tmp_script="$tmp_folder/script.sh"
decompiled_path="$tmp_folder/binary.ltdis.strings.txt"

mkdir "$tmp_folder"
download https://mercury.picoctf.net/static/ec4dbd8898ade34e1d60d5b70c1b8c8c/static > "$tmp_binary"
download https://mercury.picoctf.net/static/ec4dbd8898ade34e1d60d5b70c1b8c8c/ltdis.sh > "$tmp_script"
bash "$tmp_script" "$tmp_binary" 
grep "pico" "$decompiled_path"
rm -rf "$tmp_folder"