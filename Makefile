deploy-lambda:
	aws cloudformation deploy --template-file lambda-function.yaml --stack-name sample-function --capabilities CAPABILITY_IAM

deploy-vpc:
	aws cloudformation deploy --template-file vpc-ec2-webserver.yaml --stack-name sample-vpc-stack --capabilities CAPABILITY_IAM

deploy-app:
	aws cloudformation deploy --template-file elb/infra.yaml --stack-name sample-elb-stack --capabilities CAPABILITY_IAM
	aws cloudformation deploy --template-file elb/elb-app.yaml --stack-name sample-app-stack --capabilities CAPABILITY_IAM

delete:
	aws cloudformation delete-stack --stack-name sample-function
	aws cloudformation delete-stack --stack-name sample-vpc-stack
	aws cloudformation delete-stack --stack-name sample-elb-stack
	aws cloudformation delete-stack --stack-name sample-app-stack
