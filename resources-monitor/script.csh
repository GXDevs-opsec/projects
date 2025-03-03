#!/bin/csh

   set total_ram = `free -k | grep Mem | awk 'NR==1{print $2}'`
   set used_ram = `free -k | grep Mem | awk 'NR==1{print $3}'`
   set avail_ram = `free -k | grep Mem | awk 'NR==1{print $7}'`

   touch command.sh
   echo "" > specs.txt

   echo "#\!/bin/bash" >> command.sh
   echo "total_ram=$total_ram" >> command.sh
   echo "used_ram=$used_ram" >> command.sh
   echo "avail_ram=$avail_ram" >> command.sh
   echo "awk" "'"'{u=$2+$4; t=$2+$4+$5; if (NR==1){u1=u; t1=t;} else print ($2+$4-u1) * 100 / (t-t1) "%"; }'"'" "<(grep 'cpu ' /proc/stat) <(sleep 1;grep 'cpu ' /proc/stat)" '>> specs.txt' >> command.sh
   echo "bc <<<" '"scale=4; ($total_ram-$used_ram)/$total_ram*100" >> specs.txt' >> command.sh
   bash command.sh
   rm command.sh
