#!/bin/bash

cd $(dirname $0)/..

source scripts/common.sh

aws dynamodb scan \
    --table-name "${TABLE_NAME}" \
    --filter-expression "projectName = :projectName" \
    --expression-attribute-values file://data/scan-filter.json \
    --region ap-southeast-1
