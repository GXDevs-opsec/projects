#!/bin/bash

until [[ $number == "4" ]]
do
echo""
echo""
echo " Gsim_prototype"
echo " "
echo "1.) or_gate"
echo "2.) and_gate"
echo "3.) not_gate"
echo "4.) exit "
echo -n "choose a number:"
read number

if [[ $number == "1" ]];
then
	python3 ~/documents/gsim_prototype/GATES/gateOR.py
	bash transporter.sh
elif [[ $number == "2" ]];
then
	python3 ~/documents/gsim_prototype/GATES/gateAND.py
	bash transporter.sh
elif [[ $number == "3" ]];
then
	python3 ~/documents/gsim_prototype/GATES/gateNOT.py
	bash transporter.sh
elif [[ $number == "4" ]];
then
    exit 1
else
    echo "invalid number"
fi
done

