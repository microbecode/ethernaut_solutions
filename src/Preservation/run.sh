#!/usr/bin/env bash
if [ -f .env ]
then
    export $(cat .env | xargs) 
else
    echo "Please set your .env file"
    exit 1
fi

RPC_URL='https://eth-goerli.g.alchemy.com/v2/'$ALCHEMY_API_KEY

ADDR=0x51E923FEe06f3bfc191c6a881139fDBDa67d47D1
PLAYER=0x9EE045b15dd36Ffb96C4576D5b0f01D142dbE0FA
cast send $ADDR "tryit()" --rpc-url $RPC_URL --private-key=$GOERLI_PRIVATE_KEY