#!/bin/bash
# In browser enter to Yandex Music URL whis this command for get token of your Yandex Music account
/opt/google/chrome/chrome --enable-logging=stderr 'https://oauth.yandex.ru/authorize?response_type=token&client_id=23cabbbdc6cd418abb4b39c32c41195d' -v=4 > tmp.txt 2>&1 &
sleep 2
grep -e 'access_token=' tmp.txt
