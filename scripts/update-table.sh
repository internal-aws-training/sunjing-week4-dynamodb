#!/bin/bash

cd $(dirname $0)/..

source scripts/common.sh

aws dynamodb update-table \
    --table-name "${TABLE_NAME}" \
    --attribute-definitions AttributeName="${ATTRIBUTES_MEMBER_NAME}",AttributeType=S AttributeName="${ATTRIBUTES_START_DATE}",AttributeType=S \
    --provisioned-throughput ReadCapacityUnits=10,WriteCapacityUnits=10 \
    --region ap-southeast-1
