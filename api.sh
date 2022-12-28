#!/bin/bash

coins_list=$(curl "https://api.coingecko.com/api/v3/simple/price?ids=ethereum&vs_currencies=usd" |grep -oE "[0-9]*\.[0-9]+")

clear

sql_cmd="sqlite3 EthPrice 'Select ID from Used order by ID DESC limit 1'"
suu=$(( $(eval $sql_cmd) + 1 ))

echo Queried Value

sqlite3 EthPrice "Insert Into Used Values($suu,'$coins_list')"

exit