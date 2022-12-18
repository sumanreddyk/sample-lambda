# sample-lambda

## Create a stack
aws cloudformation deploy --template-file lambda-function.yaml --stack-name sample-function --capabilities CAPABILITY_IAM

## Delete a stack
aws cloudformation delete-stack --stack-name sample-function
