#!/bin/bash

date=$(date '+%Y-%m-%d %H:%M' )
touch file.log
touch Error.log
touch file_live.log
touch error_live.log
FILENAME=/home/owner/documents/password_genman/file.txt.gpg
FILESIZE=$(stat -c%s "$FILENAME")

if [ -f /home/owner/documents/password_genman/file.txt.gpg ];
 then
     echo "the file exists."
 else
    echo "the file doesnt exists. Exiting the program.. $date / $(whoami) "
      echo "the file doesnt exists. Exiting the program.. $date / $(whoami) " >> Error.log
            sleep 1
        exit 0

fi

sleep 2

 if [[ $FILESIZE == "0" || $FILESIZE == "1" || $FILESIZE == "2" ]];
  then
       echo "The password doesnt exists $date / $(whoami) "
      echo "The password  doesnt exists $date / $(whoami) " >> Error.log
  else
     echo  "The password  exists, $date / $(whoami) "
 echo  "The password  exists, $date / $(whoami) " >> file.log

fi

sleep 2.5

echo "run the log script? (y/n)"
read ans


if [[ $ans == "y" ]]; then

log_script() {

while [ -f /home/owner/documents/password_genman/file.txt.gpg ]
do
     echo "the file currently exists, 0 threats. $(date) "
      echo "the file currently exists, 0 threats. $(date)" >> file_live.log
sleep 3
done
     echo "the file no longer exists. $(date) "
       echo "the file no longer exists. $(date) " >> error_live.log
exit 1
}

log_script
else
     exit
fi
