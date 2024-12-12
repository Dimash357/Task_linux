#!/bin/bash

# Директория с временными файлами
TEMP_DIR="/tmp"

# Удаление файлов старше 7 дней
find "$TEMP_DIR" -type f -mtime +7 -exec rm -f {} \;

echo "Очистка временных файлов завершена."
