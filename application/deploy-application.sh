#!/bin/bash

deploy="aws cloudformation deploy \
    --stack-name my-app \
    --template-file application.yaml \
    --parameter-overrides VpcId=<vpc_id> PrivateSubnetId=<private_subnet_id>
    --no-fail-on-empty-changeset
"

echo $deploy

$deploy