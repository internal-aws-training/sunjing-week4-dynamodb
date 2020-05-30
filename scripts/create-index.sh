#!/bin/bash

cd $(dirname $0)/..

source scripts/common.sh

aws dynamodb update-table \
    --table-name "${TABLE_NAME}" \
    --attribute-definitions AttributeName="${ATTRIBUTES_MEMBER_NAME}",AttributeType=S \
    --global-secondary-index-updates file://global-index.json\
    --region ap-southeast-1
