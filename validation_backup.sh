#!/bin/bash

# Author Jhon Apache

dt=$(date --date yesterday "+%Y%m%d")
log_file=backup_$dt.txt

echo "##############################################################"   >>$log_file
echo -e "\e[34mBackup validation $dt\e[0m"  >>$log_file
echo "##############################################################"   >>$log_file

files_bkp=("File1" "File2" "File3" "File4")

if [ -d /path_files/all/$dt ]; then

    for i in ${files_bkp[@]}
        do
            tar tf /path_files/all/$dt/$i"_"$dt".tar" | wc -l | while read FILES
                do
                    if [ $FILES -ge 1 ]; then
                        echo -e "Backup not empty for $i" >>$log_file
                    else
                        echo -e "Backup Empty, please check $i" >>$log_file
                    fi
                done
        done
else
echo "Backup directory doesn't exist, please check" >>$log_file
fi
