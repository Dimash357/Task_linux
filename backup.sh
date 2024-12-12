#!/bin/bash

# Директория, которую нужно архивировать
SOURCE_DIR="/path/to/source"

# Директория для хранения резервной копии
BACKUP_DIR="/path/to/backup"

# Имя резервной копии с текущей датой
BACKUP_NAME="backup_$(date +%Y%m%d%H%M%S).tar.gz"

# Создание резервной копии
mkdir -p "$BACKUP_DIR"
tar -czf "$BACKUP_DIR/$BACKUP_NAME" "$SOURCE_DIR"

echo "Резервная копия создана: $BACKUP_DIR/$BACKUP_NAME"
