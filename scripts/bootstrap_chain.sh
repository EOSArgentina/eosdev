echo "Bootstraping chain\n"

echo "Setting bios contract"
cleos.sh set contract eosio /contracts/eosio.bios -p eosio@active

echo "\nSetting token contract"
cleos.sh create account eosio eosio.token EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV
cleos.sh set contract eosio.token /contracts/eosio.token -p eosio.token@active

echo "Create SYS token"
cleos.sh push action eosio.token create '[ "eosio", "1000000000.0000 SYS"]' -p eosio.token@active

echo "\nSetting exchange contract"
cleos.sh create account eosio exchange EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV
cleos.sh set contract exchange /contracts/exchange -p exchange@active

echo "\nSetting multisig contract"
cleos.sh create account eosio eosio.msig EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV
cleos.sh set contract eosio.msig /contracts/eosio.msig -p eosio.msig@active
