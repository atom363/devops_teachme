#!/bin/bash

mkdir /opt/mysql_backup
mkdir /opt/postgresql_backup

mysqldump -u root -pmynewpassword devops_mysql1 > /opt/mysql_backup/base1_backup_"$(date +%Y-%m-%d-%H)".sql
mysqldump -u root -pmynewpassword devops_mysql2 > /opt/mysql_backup/base2_backup_"$(date +%Y-%m-%d-%H)".sql

pg_dump postgresql://psql1:psql1@localhost:5432/devops_postgres1 > /opt/postgresql_backup/base1_backup_"$(date +%Y-%m-%d-%H)".sql
pg_dump postgresql://psql2:psql2@localhost:5432/devops_postgres2 > /opt/postgresql_backup/base2_backup_"$(date +%Y-%m-%d-%H)".sql

crontab -l | grep "0 * * * * ~/backup.sh" || (crontab -l 2>/dev/null; echo "0 * * * * ~/backup.sh") | crontab -
