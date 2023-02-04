#!/usr/bin/env bash
if [ -f .env ]
then
    export $(cat .env | xargs) 
else
    echo "Please set your .env file"
    exit 1
fi

RPC_URL='https://eth-goerli.g.alchemy.com/v2/'$ALCHEMY_API_KEY

ADDR=0x345b777509A33f470b0201546ad22ee344cbC9BD

# 0  bool public locked = true;
# 1 uint256 public ID = block.timestamp;
# 2 uint8 private flattening = 10;
# 2 uint8 private denomination = 255;
# 2 uint16 private awkwardness = uint16(block.timestamp);
# 3,4,5 bytes32[3] private data;

cast send $ADDR "unlock(bytes16 _key)" "0x42d48387192a4d20570ba4f21b09e619" --rpc-url $RPC_URL --private-key=$GOERLI_PRIVATE_KEY
cast storage $ADDR 0x5 --rpc-url $RPC_URL
#0x42d48387192a4d20570ba4f21b09e6199a70a4324688ae51b050aa1a392de1c0
#0x42d48387192a4d20570ba4f21b09e619
#0x9a70a4324688ae51b050aa1a392de1c0

