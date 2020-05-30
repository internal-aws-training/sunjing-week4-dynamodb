#!/bin/bash

cd $(dirname $0)/..

source scripts/common.sh

#aws dynamodb list-backups

aws dynamodb restore-table-from-backup \
    --target-table-name "${TABLE_NAME}" \
    --backup-arn arn:aws:dynamodb:ap-southeast-1:494526681395:table/sunjing/backup/01590822397609-49d7ecba \
    --region ap-southeast-1
