. ./setup.sh
myapplecli tx wasm execute $MYCONTRACT "$APPROVE" --from $S1 --gas-prices="0.025cosmos" --gas="auto" --gas-adjustment="12." -y --keyring-backend test --chain-id test
