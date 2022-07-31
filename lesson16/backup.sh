#!/bin/bash

####################################### Task ########################################################################
### [] create backup script for some data folder                                                                     #
### [] this script should be able to work in different modes                                                         #
##### [] backups minutely (with miliseconds in the archive name): 2022-07-17-09:53:53.3332211.zip                    #
##### [] backups hourly (with just day-hour): 2022-07-17-09:53.zip                                                   #
##### [] backups daily: 2022-07-17.zip                                                                               #
### [] script should also include archive file list in the archive and some meta information                         #
### [ ] about the execution details (who, when and how)                                                               #
### [ ] script should be added in crontab                                                                             #
#####################################################################################################################

# Инструменты:
# zip
# cron
# rsync

# Фунционал:
# + получить параметры - путь папки и режим
# + создание и заполнение мета файла
# + вывести содержимое папки, которая будет архивироваться в мета файла
# + архивация
# + крон
# + копирование на удаленный сервер

MODE=$1
PATH_FOLDER=$2
RMT=$3
#PATH_FOLDER="./app"

CRONPID=$(ps ho %p -C cron)
if [[ $CRONPID -eq $PPID ]] ; then
        interactive="Script started from cron" ;
else
        interactive="Script started not from cron" ;
fi

case $MODE in
    "minutely")
        cron_schedule="* * * * *"
        archive_name=$(date +%Y-%m-%d-%T.%7N)
        ;;
    "hourly")
        cron_schedule="1 * * * *"
        archive_name=$(date +%Y-%m-%d-%H)
        ;;
    "daily")
        cron_schedule="0 20 * * *"
        archive_name=$(date +%Y-%m-%d)
        ;;
    *)
        echo "Wrong input"
        exit 1
        ;;
esac

sudo apt install tree zip rsync -y > /dev/null

touch "$PATH_FOLDER"/meta.txt
whoami > "$PATH_FOLDER"/meta.txt
{
    date 
    echo "Mode: $MODE" 
    echo "$interactive" 
} >> "$PATH_FOLDER"/meta.txt

tree -a "$PATH_FOLDER" >> "$PATH_FOLDER"/meta.txt

#archivation 
zip -r ~/"$archive_name".zip "$PATH_FOLDER"

#cron
crontab -l | grep "$cron_schedule ~/backup.sh $1 $2 $3" || (crontab -l 2>/dev/null; echo "$cron_schedule ~/backup.sh $1 $2 $3") | crontab -

if [[ "$RMT" == "rmt" ]] ; then
        env RSYNC_PASSWORD=password1 rsync ~/"$archive_name".zip user@127.0.0.1/backup/"$archive_name".zip
fi