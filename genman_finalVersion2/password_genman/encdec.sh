#!/bin/bash

#file=/home/owner/documents/password_genman/file.txt

echo "encrypt/decrypt"
until [[ $option == "3" ]];
do

  echo "Please select your option (1 => enc/ 2 => dec/ 3 => exit):"
  read option

  if [[ $option == 1 ]];
  then
   if [ -f /home/owner/documents/password_genman/file.txt ];
   then
     echo "starting encryption..."
       gpg -c file.txt
       rm file.txt
     echo "the file has been encrypted..."
     source logger.sh
   else
     echo 'encryption failed...'
      echo "encryption failed... $(date)" >> Error.log
     exit 0
   fi
   elif [[ $option == 2 ]];
      then
      if [ -f /home/owner/documents/password_genman/file.txt.gpg ];
      then
       echo "starting decryption..."
         gpg -d file.txt.gpg
       echo "the file has been decrypted..."
       source logger.sh
      else
        echo 'decryption failed...'
         echo "decryption failed... $(date)" >> Error.log
        exit 0
      fi
     elif [[ $option == 3 ]];
         then
         echo "exiting...."
      else
         "invalid option...."
fi

done

