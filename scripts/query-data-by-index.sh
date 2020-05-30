#!/bin/bash

cd $(dirname $0)/..

source scripts/common.sh

aws dynamodb query \
    --table-name "${TABLE_NAME}" \
    --index-name "${INDEX_NAME}" \
    --key-condition-expression "memberName = :myIndex" \
    --expression-attribute-values file://query-by-index.json \
    --region ap-southeast-1
