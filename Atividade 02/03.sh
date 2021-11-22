#!/bin/bash
  
num1=$1
num2=$2

if [ $num1 -ge $num2 ]; then
    maior=$num1
    menor=$num2
else
    maior=$num2
    menor=$num1
fi

echo -e "Maior: ${maior}\nMenor: ${menor}"


<< questao
3 - Escreva um script que peça para o usuário digitar 2 números inteiros. Imprima o menor e o maior dos dois. Use o formato abaixo.

$ ./3.sh 12 21
> Menor: 12
> Maior: 21


questao

echo "fim do script"