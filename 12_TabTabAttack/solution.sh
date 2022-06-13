#!/bin/bash
source ../commons.sh

tmp_folder=tmp
file_name="packed.zip"
zip_dest="$tmp_folder/$file_name"

mkdir "$tmp_folder"
wget -O "$zip_dest" https://mercury.picoctf.net/static/e38f6a5b69b45d21e33cf7281d8c2531/Addadshashanammu.zip
unzip "$zip_dest" -d "$tmp_folder"
path_to_bin=$(find tmp | grep fang)
"./$path_to_bin"
rm -rf "$tmp_folder"