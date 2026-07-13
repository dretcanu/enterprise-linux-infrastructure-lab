#!/bin/bash

BACKUP_DIR="$HOME/backups"
DATE=$(date +%Y-%m-%d_%H-%M)

mkdir -p "$BACKUP_DIR"

tar -czf "$BACKUP_DIR/linux_configs_$DATE.tar.gz" \
	/etc/ssh \
	/etc/samba \
	/etc/exports \
	/etc/apache2 \
	/etc/netplan \
	>/dev/null 2>&1

echo "Backup completed successfully."
echo "Backup file:"
echo "$BACKUP_DIR/linux_configs_$DATE.tar.gz"
