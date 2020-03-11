
BACKUP_FOLDER=gsoc-prosoul
ELASTICSEARCH=https://admin:admin@localhost:9200

echo "scava-metrics"
NODE_TLS_REJECT_UNAUTHORIZED=0 elasticdump \
  --input=$ELASTICSEARCH/scava-metrics \
  --output=$BACKUP_FOLDER/scava-metrics.mapping.json \
  --limit=100 \
  --type=mapping
NODE_TLS_REJECT_UNAUTHORIZED=0 elasticdump \
  --input=$ELASTICSEARCH/scava-metrics \
  --output=$BACKUP_FOLDER/scava-metrics.json \
  --limit=100 \
  --type=data