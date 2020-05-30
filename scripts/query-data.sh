#!/bin/bash

cd $(dirname $0)/..

source scripts/common.sh

aws dynamodb query \
    --table-name "${TABLE_NAME}" \
    --key-condition-expression "projectName = :mykey" \
    --expression-attribute-values file://query-by-attributes.json \
    --region ap-southeast-1
