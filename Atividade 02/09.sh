#!/bin/bash
  
if (( $# == 0 )); then #verifica se existe parametros passados, solicitando os numeros caso negativo
        read -p "Digite 2 números inteiros: " num1 num2
else #associa os parameros aos numeros
        num1=$1
        num2=$2
fi

if (( ${num1} <= ${num2} )); then #verifica se o primeiro numero é menor que o segundo para terminar os limites
    limInf=${num1}
    limSup=${num2}
else
    limInf=${num2}
    limSup=${num1}
fi

somatorio=0 #para exibir somatorio
resultado=0 #para exibir resultado

for ((i=${limInf}+1; i<${limSup}; i++)); do #imprime a soma dos numeros dentro dos limites, considerado o intervalo aberto
        resultado=$((${resultado}+$i))
        somatorio=${somatorio}+"$i"
done

echo -e "Somatório de ${limInf} a ${limSup} é igual a: ${somatorio} = ${resultado}"


<< questao
9 - Escreva um script que peça para o usuário digitar dois números, a e b, e calcule (e exiba na tela) a soma de todos os números de a até b, sem incluir a e b.
$ ./9.sh 1 4
> 5

questao

echo "fim do script"