#!/bin/bash

BACKUP_DIR=/home/ec2-user/oracle-cloud-automation/backup

DATE=$(date +%Y%m%d_%H%M%S)

mkdir -p $BACKUP_DIR

echo "Starting Oracle Database Backup..."

sqlplus cloudadmin/Cloud123@FREEPDB1 <<EOF
SPOOL $BACKUP_DIR/customer_backup_$DATE.sql

SELECT * FROM customers;

SPOOL OFF;

EXIT;
EOF

echo "Backup completed successfully"
echo "Backup file: $BACKUP_DIR/customer_backup_$DATE.sql"

