#!/bin/bash

texto=$1

#não altera arquivo original (apenas exibe)
cat $texto | tr -s '\n'

#altera arquivo original (altera o texto original)
tr -s '\n' < $texto > aux
mv aux $texto


<< questao

2 - Escreva um script que use o comando tr para remover linhas vazias de um arquivo, isto é, linhas que possuem apenas o enter (\n).

questao

echo "fim do script"