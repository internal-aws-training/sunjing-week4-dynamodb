#!/bin/bash

cd $(dirname $0)/..

source scripts/common.sh

aws dynamodb update-item \
    --table-name "${TABLE_NAME}" \
    --key file://update-item-key.json \
    --update-expression "SET memberName = :memberName" \
    --expression-attribute-values file://attribute-values.json  \
    --return-values ALL_NEW
