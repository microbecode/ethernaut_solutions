#!/usr/bin/env bash
if [ -f .env ]
then
    export $(cat .env | xargs) 
else
    echo "Please set your .env file"
    exit 1
fi

#RPC_URL='http://127.0.0.1:8545'
RPC_URL='https://eth-goerli.g.alchemy.com/v2/'$ALCHEMY_API_KEY

# Without exec
#ADDR=0x179F5B64a2e17A4651Ddf1B42B7b056E5C572b68
#
#ADDR=0x5F6016F2CF793d9Ccc31ff1458a5f825D84A681B
# ehereunaut
#ETHERNAUT=0x704b4188368CC0824777D8eBc4E2eA0a196f4ca8

#goerli oma
ADDR=0xBBb3Ad0c444b78b0FAfC289a72dA6a0665d41998
# Local with exec
#ADDR=0x687EcC7Ed7b1c5F007662D29D595394e683E580c
# Local ethernaut
ETHERNAUT=0xb569737021FF0B6ACFc6637B44c2c42AC1b82328

forge create ./src/GatekeeperTwo/GatekeeperTwoSolution.sol:GatekeeperTwoSolution -i --rpc-url $RPC_URL --private-key $GOERLI_PRIVATE_KEY
# aa = 170 tai 253 = 595
#2583 + 263 + 8191 (max 277) oikea 8459
#
# uint32(uint64(0x010000000000e0fa)) == uint16(uint160(0x9EE045b15dd36Ffb96C4576D5b0f01D142dbE0FA))
#cast send $ADDR "trytwo(bytes8 _gateKey, uint256 limit)" "0x010000000000e0fa" 24000  --rpc-url $RPC_URL  --private-key $GOERLI_PRIVATE_KEY
#cast call $ADDR "en()" --rpc-url $RPC_URL  --private-key=$GOERLI_PRIVATE_KEY
cast call $ETHERNAUT "entrant()" --rpc-url $RPC_URL  --private-key=$GOERLI_PRIVATE_KEY
#cast call $ADDR "pass()" --rpc-url $RPC_URL  --private-key=$GOERLI_PRIVATE_KEY
#cast call $ADDR "reason()" --rpc-url $RPC_URL  --private-key=$GOERLI_PRIVATE_KEY
#cast call $ADDR "orig()" --rpc-url $RPC_URL  --private-key=$GOERLI_PRIVATE_KEY
#cast call $ADDR "right()" --rpc-url $RPC_URL  --private-key=$GOERLI_PRIVATE_KEY


