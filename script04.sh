#!/bin/bash

while true;do
	echo 'a - Liste apenas os diretórios de uma pasta'
	echo 'b - Liste apenas os arquivos executáveis'
	echo 'c - Liste apenas os links simbólicos'
	echo 'x - Saia do script'
	echo 'r- exibir frase legal'
	read -p "Escolha uma alternativa: " opc
	case $opc in
		"a") read -p 'Escolha a pasta:' pasta
			ls -al $pasta | grep "^d"
			;;
		"b") read -p 'Escolha a pasta: ' pasta
		       ls -l | grep '⁻..x' ;;
	       	"c") read -p 'Escolha a pasta: ' pasta
	 		for i in $(ls $pasta);
			do
				if [ -h $pasta ];then
					echo $i
				fi
			done;;
			"x") break;;
		"r") echo "Se não der certo, a gente tenta de novo, de novo e de novo."
	esac
done

