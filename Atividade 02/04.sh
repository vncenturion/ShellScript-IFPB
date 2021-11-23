#!/bin/bash

DIR1=$1
DIR2=$2
DIR3=$3

test -d ${DIR1} && echo "SIM" || echo "Nunca é tarde para começar a desistir!"
test -d ${DIR2} && echo "SIM" || echo "Nunca é tarde para começar a desistir!"
test -d ${DIR3} && echo "SIM" || echo "Nunca é tarde para começar a desistir!"

<< questao
4 - Escreva um script que receba três nomes de diretórios como parâmetros de linha de comando e, usando exatamente uma linha de comando para cada diretório e operadores condicionais (&& ou ||) imprima SIM caso o diretório exista ou uma frase criativa, caso contrário.

questao

echo "fim do script"