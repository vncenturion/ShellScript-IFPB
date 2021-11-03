#!/bin/bash 

read -p "Digite um numero inteiro qualquer: " y
y=$(($y+42))
echo "$y"

<<questao
7 - Escreva um script que peça para o usuário digitar um número inteiro. Armazene este número na variável y. Faça a variável y receber o valor y + 42. Imprima na tela o novo valor de y.
questao

echo "fim do script"