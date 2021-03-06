#!/bin/bash

cd $(dirname $0)/..

source scripts/common.sh


aws dynamodb create-table \
    --table-name "${TABLE_NAME}" \
    --attribute-definitions AttributeName="${HASH_KEY}",AttributeType=S AttributeName="${RANGE_KEY}",AttributeType=S \
    --key-schema AttributeName="${HASH_KEY}",KeyType=HASH AttributeName="${RANGE_KEY}",KeyType=RANGE \
    --provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=5 \
    --region ap-southeast-1
