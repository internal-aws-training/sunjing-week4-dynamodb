#!/bin/bash

cd $(dirname $0)/..

source scripts/common.sh

#aws dynamodb describe-continuous-backups \
#    --table-name "${TABLE_NAME}" \
#    --region ap-southeast-1

aws dynamodb restore-table-to-point-in-time \
    --source-table-name "${TABLE_NAME}" \
    --target-table-name "${TABLE_NAME}_restore" \
    --restore-date-time 1590823069.0 \
    --region ap-southeast-1
