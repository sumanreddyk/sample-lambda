deploy-lambda:
	aws cloudformation deploy --template-file lambda-function.yaml --stack-name sample-function --capabilities CAPABILITY_IAM

deploy-vpc:
	aws s3 cp hello-world.py s3://python-hello
	aws cloudformation deploy --template-file vpc-ec2-webserver.yaml --stack-name sample-app-stack --capabilities CAPABILITY_IAM

delete:
	aws cloudformation delete-stack --stack-name sample-function
	aws cloudformation delete-stack --stack-name sample-app-stack
