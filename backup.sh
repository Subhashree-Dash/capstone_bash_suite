#!/bin/bash
# backup.sh - create a tar.gz backup of sample_data directory
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
SRC_DIR="sample_data"
OUT_FILE="backup_${TIMESTAMP}.tar.gz"
tar -czf "$OUT_FILE" "$SRC_DIR"
echo "Backup created: $OUT_FILE"
ls -lh "$OUT_FILE"
