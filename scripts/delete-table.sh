#!/bin/bash

cd $(dirname $0)/..

source scripts/common.sh

#aws dynamodb list-backups

aws dynamodb delete-table \
    --table-name "${TABLE_NAME}" \
    --region ap-southeast-1
