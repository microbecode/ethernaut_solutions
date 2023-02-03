#!/usr/bin/env bash
if [ -f .env ]
then
    export $(cat .env | xargs) 
else
    echo "Please set your .env file"
    exit 1
fi

RPC_URL='https://eth-goerli.g.alchemy.com/v2/'$ALCHEMY_API_KEY

ADDR=0x06837F4eC852ECb8c21E7021758cb2FD7e8fCF32
cast send $ADDR "transfer(address _to, uint _value)" $ADDR 100 --rpc-url $RPC_URL --private-key=$GOERLI_PRIVATE_KEY