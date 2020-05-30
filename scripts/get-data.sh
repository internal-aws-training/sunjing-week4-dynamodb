#!/bin/bash

cd $(dirname $0)/..

source scripts/common.sh

aws dynamodb get-item \
    --table-name "${TABLE_NAME}" \
    --key file://get-item-by-key.json \
    --region ap-southeast-1
