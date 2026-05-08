#!/usr/bin/env bash

set -euo pipefail

SOURCE_DIR="${HOME}/"
TARGET_DIR="/tmp/backup/"

# --delete дает полную зеркальную копию;
# --delete-excluded удаляет из приемника исключенные пути;
# --checksum заставляет сравнивать файлы по хэшам.
if rsync -a --delete --delete-excluded --checksum --exclude='.*' "$SOURCE_DIR" "$TARGET_DIR"; then
  logger -t backup_home "SUCCESS: backup completed from $SOURCE_DIR to $TARGET_DIR"
  exit 0
else
  logger -t backup_home "ERROR: backup failed from $SOURCE_DIR to $TARGET_DIR"
  exit 1
fi
