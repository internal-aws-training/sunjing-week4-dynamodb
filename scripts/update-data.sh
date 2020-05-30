#!/bin/bash

cd $(dirname $0)/..

source scripts/common.sh

aws dynamodb update-item \
    --table-name "${TABLE_NAME}" \
    --key file://data/update-item-key.json \
    --update-expression "SET memberName = :memberName" \
    --expression-attribute-values file://data/attribute-values.json  \
    --return-values ALL_NEW \
    --region ap-southeast-1
