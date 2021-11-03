#!/bin/bash

read -p "digite o #1 diretorio: " DIR1
read -p "digite o #2 diretorio: " DIR2
read -p "digite o #3 diretorio: " DIR3
read -p "digite o #4 diretorio: " DIR4

echo "copiando conteúdo de $DIR1, $DIR2, $DIR3 e $DIR4 para out.txt"

ls $DIR1 $DIR2 $DIR3 $DIR4 > out.txt

<<questao
2 - Escreva um script que pergunte ao usuário o nome de 4 diretórios e salve no arquivo out.txt todo o conteúdo destes 4 diretórios.
questao

echo "fim do script"