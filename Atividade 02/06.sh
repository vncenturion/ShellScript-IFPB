#!/bin/bash
  
arquivo=$1

if [ ! -e ${arquivo} ] ||  (( $(wc -l < ${arquivo}) > 3 )); then
    echo "BAD"
else
    tail -n 1 ${arquivo}
fi

<< questao
6 - Escreva um script que recebe o nome de um arquivo como argumento de linha de comando e imprime BAD caso este arquivo não exista ou possua mais que 3 linhas. Caso contrário, exiba o nome do arquivo e a última linha do mesmo.

questao

echo "fim do script"