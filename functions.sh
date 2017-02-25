#!/bin/bash
# Here you can create functions which will be available from the commands file
# You can also use here user variables defined in your config file
# To avoid conflicts, name your function like this
# pg_XX_myfunction () { }
# pg for PluGin
# XX is a short code for your plugin, ex: ww for Weather Wunderground
# You can use translations provided in the language folders functions.sh
jv_pg_miner () {
	curl -s http://zcash.flypool.org/api/miner_new/t1NZzHkYzJx8ZzynPSfvR89hWq3GT1TmNtb | jq -r '.hashRate'
}
jv_pg_zecbtc () {
	curl -s https://api.coinmarketcap.com/v1/ticker/zcash/ | jq -r '.[]' | jq -r '.price_btc' | cut -c -6
}

jv_pg_zecusd () {
	curl -s https://api.coinmarketcap.com/v1/ticker/zcash/ | jq -r '.[]' | jq -r '.price_usd' | cut -c -4
}
