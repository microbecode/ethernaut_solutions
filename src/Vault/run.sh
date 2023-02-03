#!/usr/bin/env bash
if [ -f .env ]
then
    export $(cat .env | xargs) 
else
    echo "Please set your .env file"
    exit 1
fi

RPC_URL='https://eth-goerli.g.alchemy.com/v2/'$ALCHEMY_API_KEY

ADDR=0xD34F7815e2bb725e5a9DFd859D6B096B2D72b153

cast send $ADDR "unlock(bytes32 _password)" "0x412076657279207374726f6e67207365637265742070617373776f7264203a29" --rpc-url $RPC_URL --private-key=$GOERLI_PRIVATE_KEY
cast storage $ADDR 0x1 --rpc-url $RPC_URL