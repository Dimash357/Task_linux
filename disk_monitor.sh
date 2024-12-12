#!/bin/bash

# Пороговое значение дискового пространства (в процентах)
THRESHOLD=80

# Получение процента использования диска
DISK_USAGE=$(df / | grep / | awk '{print $5}' | sed 's/%//')

if [ "$DISK_USAGE" -ge "$THRESHOLD" ]; then
    echo "Внимание! Использование дискового пространства достигло $DISK_USAGE%." >> /var/log/disk_monitor.log
else
    echo "Использование дискового пространства: $DISK_USAGE%."
fi
