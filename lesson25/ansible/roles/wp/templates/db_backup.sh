#!/bin/bash

mkdir /opt/mysql_backup

mysqldump -u root -p{{ mysql_root_password }} {{ wp_db_name }} > /opt/mysql_backup/wp_backup_"$(date +%Y-%m-%d-%H)".sql

crontab -l | grep "*/10 * * * * ~/db_backup.sh" || (crontab -l 2>/dev/null; echo "*/10 * * * * ~/db_backup.sh") | crontab -