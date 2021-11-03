#!/bin/bash

DIR1=$1
DIR2=$2
DIR3=$3
DIR4=$4

echo $*

if [ -z $1 ]; then
        read -p "digite o #1 diretorio: " DIR1
        read -p "digite o #2 diretorio: " DIR2
        read -p "digite o #3 diretorio: " DIR3
        read -p "digite o #4 diretorio: " DIR4
elif [ -z $2 ]; then
        read -p "digite o #2 diretorio: " DIR2
        read -p "digite o #3 diretorio: " DIR3
        read -p "digite o #4 diretorio: " DIR4
elif [ -z $3 ]; then
        read -p "digite o #3 diretorio: " DIR3
        read -p "digite o #4 diretorio: " DIR4
elif [ -z $4 ]; then
        read -p "digite o #4 diretorio: " DIR4
fi

echo "copiando conteúdo de $DIR1, $DIR2, $DIR3 e $DIR4 para out.txt"

ls -la ${DIR1} ${DIR2} ${DIR3} ${DIR4} > out.txt

<<questao
3 - Melhore o script anterior para que os nomes dos 4 diretórios sejam passados como parâmetros de linha de comando.
questao

echo "fim do script"