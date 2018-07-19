#!/bin/bash

cp config.tpl config.txt
cp pools.tpl pools.txt

sed -i 's/{NICEHASH}/'"$NICEHASH"'/g' pools.txt
sed -i 's/{SECURE}/'"$SECURE"'/g' pools.txt
sed -i 's/{PASSWORD}/'"$PASSWORD"'/g' pools.txt
sed -i 's/{POOLHOSTNAME}/'"$POOLHOSTNAME"'/g' pools.txt
sed -i 's/{PORT}/'"$PORT"'/g' pools.txt
sed -i 's/{WALLET}/'"$WALLET"'/g' pools.txt
sed -i 's/{CURRENCY}/'"$CURRENCY"'/g' pools.txt
sed -i 's/{WORKER}/'"$WORKER"'/g' pools.txt

touch output.log
./xmr-stak -c config.txt "$@" &> /dev/null &
tail -f output.log
