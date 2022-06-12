#!/bin/bash
tmp_folder=tmp
dec_base="$tmp_folder/dec"

convert_to_string() {
    while read -r line; do
        char=$(printf %x "$line")
        printf "\x$char"
    done < "$1"
}


mkdir "$tmp_folder" &&
nc mercury.picoctf.net 22342 > "$dec_base" && 
convert_to_string "$dec_base";

rm -rf "$tmp_folder"