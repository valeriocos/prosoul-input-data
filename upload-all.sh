#!/bin/bash

BACKUP_FOLDER=gsoc-prosoul
ELASTICSEARCH=https://admin:admin@localhost:9200

echo "scava-metrics"
NODE_TLS_REJECT_UNAUTHORIZED=0 elasticdump \
  --input=$BACKUP_FOLDER/scava-metrics.mapping.json \
  --output=$ELASTICSEARCH  \
  --output-index=scava-metrics  \
  --limit=100 \
  --type=mapping
NODE_TLS_REJECT_UNAUTHORIZED=0 elasticdump \
  --input=$BACKUP_FOLDER/scava-metrics.json \
  --output=$ELASTICSEARCH  \
  --output-index=scava-metrics  \
  --limit=100 \
  --type=data