#!/usr/bin/env bash
if [ -f .env ]
then
    export $(cat .env | xargs) 
else
    echo "Please set your .env file"
    exit 1
fi

RPC_URL='https://eth-goerli.g.alchemy.com/v2/'$ALCHEMY_API_KEY

ADDR=0xA77490F83E14A17b4280B4A5e9D073C6fC5c70af
OWNER=0xF781b45d11A37c51aabBa1197B61e6397aDf1f78
PLAYER=0x9EE045b15dd36Ffb96C4576D5b0f01D142dbE0FA
cast send $ADDR "0xdd365b8b00000000000000000000000000000000000000000000000000000000dd365b8b" --gas-limit 10000000 --rpc-url $RPC_URL --private-key=$GOERLI_PRIVATE_KEY
#cast call $ADDR "delegate()" --rpc-url $RPC_URL --private-key=$GOERLI_PRIVATE_KEY