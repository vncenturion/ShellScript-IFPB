#!/bin/bash
  
read -p "Digite 4 números decimais: " num1 num2 num3 num4

menor=$num1

for numero in ${num2} ${num3} ${num4}; do #dispensa o num1 pq é associado inicialmente ao menor
    if [ $(bc <<< "${numero}<=${menor}") -eq 1 ]; then #teste logico que verifica se um numero é menor q outro e retorna 1 se v e 0 se f
        menor="${numero}"
    fi
done

echo -e "Menor: ${menor}"

<< questao
7 - Escreva um script que peça para o usuário digitar 4 números COM CASAS DECIMAIS. Imprima o menor deles. Use o bc.

$ ./7.sh
> Digite quatro números com casas decimais: 12.5 21.3 1.0 2.0
> 1.0

questao

echo "fim do script"