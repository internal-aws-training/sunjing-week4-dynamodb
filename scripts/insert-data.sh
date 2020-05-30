#!/bin/bash

cd $(dirname $0)/..

source scripts/common.sh

aws dynamodb batch-write-item \
    --request-items file://data/insert-data.json \
    --region ap-southeast-1
