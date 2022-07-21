#!/bin/bash

deploy="aws cloudformation deploy \
    --stack-name my-app \
    --template-file application.yaml \
    --parameter-overrides ImageId=ami-00b18b3deb7f286ca
    --capabilities CAPABILITY_IAM
    --no-fail-on-empty-changeset
"

echo $deploy

$deploy