#!/bin/bash

cd $(dirname $0)/..

source scripts/common.sh

aws dynamodb update-continuous-backups \
    --table-name "${TABLE_NAME}" \
    --point-in-time-recovery-specification PointInTimeRecoveryEnabled=true \
    --region ap-southeast-1
