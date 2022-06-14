#!/bin/bash
source ../commons.sh

tmp_folder=tmp
tmp_image="$tmp_folder/dolls.jpg"

mkdir "$tmp_folder"
download https://mercury.picoctf.net/static/205adad23bf9d8303081a0e71c9beab8/dolls.jpg > "$tmp_image"
cd "$tmp_folder" && binwalk -e "dolls.jpg" &&
cd _dolls.jpg.extracted/base_images && binwalk -e 2_c.jpg &&
cd _2_c.jpg.extracted/base_images && binwalk -e 3_c.jpg &&
cd _3_c.jpg.extracted/base_images && binwalk -e 4_c.jpg &&
cat _4_c.jpg.extracted/flag.txt
rm -rf "$tmp_folder"