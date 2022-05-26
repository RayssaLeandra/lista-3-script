#!/bin/bash
read -p 'Digite o ip : ' ip
cont=0
for octetos in {1..4};
do
	octeto=$(cut -d '.' -f $octetos <<< "$ip")
	converterbase=$(bc <<< "obase=2;$octeto")
	contador=$(( cont+=1 ))
	if [ $cont == '1' ];then
		 printf "Octeto 1: %08d\n" $converterbase
	elif [ $cont == '2' ];then
		printf "Octeto 2: %08d\n" $converterbase
	elif [ $cont == '3' ];then
		printf "Octeto 3: %08d\n" $converterbase
	elif [ $cont == '4' ];then
		printf "Octeto 4: %08d\n" $converterbase
	fi
done
