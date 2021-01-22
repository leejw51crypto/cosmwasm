. ./setup.sh
myapplecli tx wasm instantiate $CODEID "$INIT" --from $S1 --amount=$MYAMOUNT --label "escrow1" --gas-prices="0.025cosmos" --gas="auto" --gas-adjustment="1.2" -y --keyring-backend test --chain-id=test
