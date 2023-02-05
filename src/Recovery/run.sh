#!/usr/bin/env bash
if [ -f .env ]
then
    export $(cat .env | xargs) 
else
    echo "Please set your .env file"
    exit 1
fi

RPC_URL='https://eth-goerli.g.alchemy.com/v2/'$ALCHEMY_API_KEY

ADDR=0x244C52d54323fA0fdE7A72EF5B16Ce1134ADe7CF
PLAYER=0x9EE045b15dd36Ffb96C4576D5b0f01D142dbE0FA
cast send $ADDR "destroy(address _to)" $PLAYER --rpc-url $RPC_URL --private-key=$GOERLI_PRIVATE_KEY