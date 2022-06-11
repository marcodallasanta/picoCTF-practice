#!/bin/bash
rot13() {
    echo "$1" | tr 'A-Za-z' 'N-ZA-Mn-za-m'
}

flagCrypted="cvpbPGS{arkg_gvzr_V'yy_gel_2_ebhaqf_bs_ebg13_nSkgmDJE}"
flagDecrypted=$(rot13 "$flagCrypted")
echo "$flagDecrypted"
