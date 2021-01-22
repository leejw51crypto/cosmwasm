export V1=$(myapplecli keys show validator1 -a --keyring-backend test)
export V2=$(myapplecli keys show validator2 -a --keyring-backend test) 
export S1=$(myapplecli keys show signer1 -a --keyring-backend test) 
export S2=$(myapplecli keys show signer2 -a --keyring-backend test)

echo V1= $V1
echo V2= $V2
echo S1= $S1
echo S2= $S2


export CODEID=1
export MYAMOUNT=2cosmos
export INIT=$(jq -n --arg sender $S1 --arg receiver $S2 '{"arbiter":$sender, "recipient":$receiver}')
export MYCONTRACT=cosmos1hqrdl6wstt8qzshwc6mrumpjk9338k0lr4dqxd
export APPROVE='{"approve":{"quantity":[{"amount":"2", "denom":"cosmos"}]}}'
