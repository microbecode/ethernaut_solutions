#!/usr/bin/env bash
if [ -f .env ]
then
    export $(cat .env | xargs) 
else
    echo "Please set your .env file"
    exit 1
fi

RPC_URL='https://eth-goerli.g.alchemy.com/v2/'$ALCEHMY_API_KEY

forge create ./src/CoinFlip/Solution.sol:Solution -i --rpc-url $RPC_URL --private-key $GOERLI_PRIVATE_KEY

echo ""
echo "Verifier deployed successfully"