#!/bin/bash
  
texto=$1

cat ${texto} | tr '0-9' 'x' > aux
mv aux $texto

<< questao

1 - Escreva um script que use o comando tr para substituir todos os números em um arquivo por caracteres ‘X’.

questao

echo "fim do script"