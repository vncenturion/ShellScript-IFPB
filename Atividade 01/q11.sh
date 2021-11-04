#!/bin/bash

echo "arquivos passados: $*"

count1=$(wc -l < $1)
count2=$(wc -l < $2)
count3=$(wc -l < $3)

echo "Somatorio: $count1 + $count2 + $count3"

somaLinhas=$(( $count1 + $count2 + $count3 ))
echo $somaLinhas

<<questao
11 - Escreva um script que recebe 3 nomes de arquivo como parâmetros de linha de comando e imprime a soma dos números de linhas dos 3 arquivos.
Utilize a substituição de shell, substituição aritmética e o comando wc -l para contar o número de linhas de cada arquivo. Por exemplo:
        $ ./z.sh a.txt b.txt c.txt
        > 14
questao
