echo "\nCreating account for contract\n"
cleos.sh create account eosio $1 EOS6E66mRnSTCc8BwY8KXMKWcQEKAvWXLVhMK6Vhn9FUCKjuBoGgw EOS6E66mRnSTCc8BwY8KXMKWcQEKAvWXLVhMK6Vhn9FUCKjuBoGgw

echo "\nFunding account\n"
cleos.sh push action eosio.token issue "[ \"$1\", \"1000.0000 SYS\", \"memo\" ]" -p eosio@active

echo "\nCompiling...\n"
eosiocpp.sh -o /work/$2/$2.wast /work/$2/$2.cpp
eosiocpp.sh -g /work/$2/$2.abi /work/$2/$2.cpp

echo "\nSetting code to account\n"
cleos.sh set contract $1 /work/$2 -p $1@active

echo "\nContract ready\n"

