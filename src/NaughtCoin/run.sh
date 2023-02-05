#!/usr/bin/env bash
if [ -f .env ]
then
    export $(cat .env | xargs) 
else
    echo "Please set your .env file"
    exit 1
fi

RPC_URL='https://eth-goerli.g.alchemy.com/v2/'$ALCHEMY_API_KEY

ADDR=0x0289E6b0B9AAe079dBE6F2102Cb9Ca1812b84291
MYCONTRACT=0x79E4f7Ddd0f0A8c0E154f7852E8a69332D63d905
PLAYER=0x9EE045b15dd36Ffb96C4576D5b0f01D142dbE0FA



cast call $ADDR "balanceOf(address account)" $PLAYER --rpc-url $RPC_URL --private-key=$GOERLI_PRIVATE_KEY
# 0x00000000000000000000000000000000000000000000d3c21bcecceda1000000

#cast send $ADDR "approve(address spender, uint256 amount)" $MYCONTRACT 1000000000000000000000000  --rpc-url $RPC_URL --private-key=$GOERLI_PRIVATE_KEY
cast send $MYCONTRACT "tryit()"  --rpc-url $RPC_URL --private-key=$GOERLI_PRIVATE_KEY