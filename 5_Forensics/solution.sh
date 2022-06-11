#!/bin/bash
source ../commons.sh

tmp_dir="tmp"
image_path="$tmp_dir/cat.jpg"

mkdir "$tmp_dir" &&
download https://mercury.picoctf.net/static/c28a959c5605d5f67480d5dd3a77f302/cat.jpg > "$image_path" &&
exiftool "$image_path" | grep "License" | awk -F ":" '{print $2}' | awk '{ gsub(/ /,""); print }' | base64 -d;
rm -rf "$tmp_dir"
