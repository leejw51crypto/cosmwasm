. ./setup.sh
myapplecli tx wasm store ./contract.wasm --from $S1 --gas-prices="0.025cosmos" --gas="auto" --gas-adjustment="1.2" --keyring-backend test --chain-id test
myapplecli query wasm list-code
