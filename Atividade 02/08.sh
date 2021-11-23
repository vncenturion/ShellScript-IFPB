#!/bin/bash
  
#escreve os numero impares de 0 a 108 caso nenhum parametro seja passado
if [ $# == 0 ]; then
        for ((i=0; i<=108; i++)); do
                if (( i%2 != 0)); then
                        echo -n "$i "
                fi
        done
        echo ""

#caso fornecidos parametros para os limites
else
        if (( $1 <= $2 )); then #verifica se o primeiro parametro é menor que o segundo
                limInf=$1
                limSup=$2
        else
                limInf=$2
                limSup=$1
        fi

        for ((i=${limInf}; i<=${limSup}; i++)); do #imprime os numeros impares dentro dos parametros, considerado o intervalo fechado
                if (( i%2 != 0)); then
                        echo -n "$i "
                fi
        done
        echo ""
fi

<< questao
8 - Escreva um script que imprima todos os números ímpares entre 0 e 108. Melhore o script para que imprima todos os números ímpares entre a e b, sendo a o primeiro parâmetro de linha de comando, enquanto que b é o segundo.

questao

echo "fim do script"