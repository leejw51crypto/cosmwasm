#!/bin/bash
rm -rf $HOME/.myappled
rm -rf $HOME/.myapplecli
myappled unsafe-reset-all

myappled init testnode --chain-id test -o

myapplecli keys add validator1 --keyring-backend test
myapplecli keys add validator2 --keyring-backend test
myapplecli keys add signer1 --keyring-backend test
myapplecli keys add signer2 --keyring-backend test

myappled add-genesis-account $(myapplecli keys show validator1 -a --keyring-backend test) 90000000000000000000000000000stake,700000000000000000cosmos 
myappled add-genesis-account $(myapplecli keys show validator2 -a --keyring-backend test) 80000000000000000000000000000stake,600000000000000000cosmos
myappled add-genesis-account $(myapplecli keys show signer1 -a --keyring-backend test) 10000000stake,30000000000000cosmos
myappled add-genesis-account $(myapplecli keys show signer2 -a --keyring-backend test) 10000000stake,20000000000000cosmos

myappled gentx --name validator1 --amount 1000000000stake   --keyring-backend test

myappled collect-gentxs

myappled validate-genesis
