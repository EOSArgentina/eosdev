echo "Creating default wallet"
cleos.sh wallet create --to-console >> wallet.txt

echo "\nWallet password stored in wallet.txt"
cat wallet.txt

echo "\nPlease input the wallet password you've just got"
cleos.sh wallet unlock

echo "\nImporting eosio private key"
cleos.sh wallet import --private-key 5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3

echo "\nWallet ready\n"
