#!/bin/bash
source ../commons.sh

tmp_dir="tmp"
bin_path="$tmp_dir/binary"

mkdir "$tmp_dir" &&
download https://mercury.picoctf.net/static/b28b6021d6040b086c2226ebeb913bc2/warm > "$bin_path" &&
chmod 777 "$bin_path" && "$bin_path" -h;
rm -rf "$tmp_dir"
