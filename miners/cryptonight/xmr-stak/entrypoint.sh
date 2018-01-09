#!/bin/bash

cp config.tpl config.txt

sed -i 's/{NICEHASH}/'"$NICEHASH"'/g' config.txt
sed -i 's/{SECURE}/'"$SECURE"'/g' config.txt
sed -i 's/{PASSWORD}/'"$PASSWORD"'/g' config.txt
sed -i 's/{POOLHOSTNAME}/'"$POOLHOSTNAME"'/g' config.txt
sed -i 's/{PORT}/'"$PORT"'/g' config.txt
sed -i 's/{WALLET}/'"$WALLET"'/g' config.txt

touch output.log
./xmr-stak -c config.txt "$@" &> /dev/null &
tail -f output.log
