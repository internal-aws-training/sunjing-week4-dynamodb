#!/bin/bash

cd $(dirname $0)/..

source scripts/common.sh

aws dynamodb create-backup \
    --table-name "${TABLE_NAME}" \
    --backup-name "${BACKUP_TABLE_NAME}" \
    --region ap-southeast-1
