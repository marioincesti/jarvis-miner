#!/bin/bash
# Here you can create functions which will be available from the commands file
# You can also use here user variables defined in your config file
# To avoid conflicts, name your function like this
# pg_XX_myfunction () { }
# pg for PluGin
# XX is a short code for your plugin, ex: ww for Weather Wunderground
# You can use translations provided in the language folders functions.sh
jv_pg_miner () {
	curl http://zcash.flypool.org/api/miner_new/t1NZzHkYzJx8ZzynPSfvR89hWq3GT1TmNtb | jq -r '.reportedHashRate'
