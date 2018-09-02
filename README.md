# EOS Smart Contract Development Toolkit

Dockerized environment to bootstrap your smart contract development.

## Usage

### Get it

Clone and configure environment

    git clone https://github.com/EOSArgentina/eosdev.git
    cd eosdev
    . ./.env


### Start

Node and wallet initialization (unsecure setup, dev only!)

    docker-compose up -d


### Init wallet

Create default wallet and import eosio key

    bootstrap_wallet.sh


### Setup system constracts

Bios, token, exchange and multisig so far.

    bootstrap_chain.sh


## Development

How to use this toolkit for development

### Create template contract

Contract skeleton will be created inside work folder.

    eosiocpp.sh -n testcontract

### Compile contract

The work dir is set on the root dir / in the container.

    eosiocpp.sh -o /work/testcontract/testcontract.wast /work/testcontract/testcontract.cpp

    eosiocpp.sh -g /work/testcontract/testcontract.abi /work/testcontract/testcontract.cpp

### Create account

    cleos.sh create account eosio testcontract ...

### Set code

    cleos.sh set contract testcontract /work/testcontract -p testcontract@active

### Call the action

    cleos.sh push action testcontract hi '["eosio"]' -p eosio@active
