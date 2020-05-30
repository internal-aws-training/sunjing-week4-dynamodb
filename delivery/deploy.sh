#!/bin/bash

cd $(dirname $0)/..

TEMPLATE=template
NAME=sj-lambda
BUCKET_NAME=sunjing-lambda-code
OUTPUT_TEMPLATE=template.yml

if [ $1 == "deploy" ]
then
 echo "deploy template"
  aws cloudformation deploy\
    --stack-name ${NAME}\
    --template-file template.yml\
    --region ap-southeast-1\
    --capabilities CAPABILITY_IAM
else
  echo "package template"
  aws cloudformation \
    package \
    --region ap-southeast-1 \
    --template-file ./aws/template.yml \
    --s3-bucket ${BUCKET_NAME} \
    --output-template-file ${OUTPUT_TEMPLATE}
fi

