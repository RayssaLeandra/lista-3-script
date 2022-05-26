#!/bin/bash
echo -e "Insira uma senha válida abaixo\n"
read -s  senha
echo "$senha" | grep -qP '^.*(?=.{5,})(?=.*[A-Z])(?=.*\d)(?=.*[a-z]).*$';
teste=$?

if [ $teste = '0' ];then
	echo 'Senha dentro do padrão'
else
	echo  'Senha inválida :('
fi

