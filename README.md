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


### Create template contract

    eosiocpp.sh -n testcontract
