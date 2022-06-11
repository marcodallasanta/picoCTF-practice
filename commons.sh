#!/bin/bash 
download() {
    wget -q --output-document - "$1"
}
