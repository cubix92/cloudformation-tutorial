CLOUDFORMATION COMMANDS
====================================================

CONFIGURATION AWS ACCOUNT
----------------------------------------------------
    aws configure

DEPLOY AWS STACK
----------------------------------------------------
    aws cloudformation deploy \
        --stack-name $STACK_NAME \
        --template-file $PATH_TO_MY_TEMPLATE \
        --no-fail-on-empty-changeset \
        --no-execute-changeset \
        --parameter-overrides $MY_PARAM_KEY=$MY_PARAM_VALUE $ANOTHER_PARAM_KEY=$ANOTHER_PARAM_VALUE \
        --tags $MY_TAG_KEY=$MY_TAG_VALUE $ANTOHER_TAG_KEY=$ANOTHER_TAG_VALUE 

CREATE AWS STACK
----------------------------------------------------
    aws cloudformation create-stack \
        --stack-name $STACK_NAME \
        --template-body file://$PATH_TO_MY_TEMPLATE \
        --parameters file://$PATH_TO_MY_FILE_WITH_PARAMS \
        --tags Key=$MY_TAG_KEY,Value=$MY_TAG_VALUE

UPDATE AWS STACK
----------------------------------------------------
    aws cloudformation update-stack \
        --stack-name $STACK_NAME \
        --template-body file://$PATH_TO_MY_TEMPLATE \
        --parameters file://$PATH_TO_MY_FILE_WITH_PARAMS \
        --tags Key=$MY_TAG_KEY,Value=$MY_TAG_VALUE

DELETE AWS STACK
----------------------------------------------------
    aws cloudformation delete-stack \
        --stack-name $STACK_NAME 

CHECKING AWS STACK
----------------------------------------------------
    aws cloudformation describe-stacks \
        --stack-name $MY_STACK_NAME \
        --output text \
        --query Stacks[].Outputs[]

    aws cloudformation describe-stack-events \
        --stack-name $STACK_NAME

CREATE AWS PACKAGE
----------------------------------------------------
    aws cloudformation package \
        --template-file $PATH_TO_MY_TEMPLATE \
        --s3-bucket $MY_BUCKET_NAME \
        --output-template-file $PATH_TO_OUTPUT_TEMPLATE

EXECUTE CHANGE SET
----------------------------------------------------
    aws cloudformation execute-change-set \
        --change-set-name $CHANGESET_NAME \
        --stack-name $MY_STACK_NAME 

DELETE CHANGE SET
----------------------------------------------------
    aws cloudformation delete-change-set \
        --change-set-name $CHANGESET_NAME \
        --stack-name $MY_STACK_NAME
