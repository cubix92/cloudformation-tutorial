#!/bin/bash

deploy="aws cloudformation deploy \
    --stack-name basic-network \
    --template-file network/network.yaml \
    --no-fail-on-empty-changeset
"

echo $deploy

$deploy