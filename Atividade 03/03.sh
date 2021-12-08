#!/bin/bash

if [ $# -ne -0 ]; then
    endIP=$1
else
    read -p "Digite um IP qualquer (formato 0.0.0.0): " endIP
fi

for ((i=1; i<=4; i++)) do
    count=0
    decimal=$(cut -d '.' -f $i <<< $endIP)
    # echo $decimal #confere parcial
    quociente=$decimal
    while [ ${quociente} -ge 1 ]; do
        # echo $quociente #confere parcial
        resto=$(($quociente%2))
        # echo $resto #confere parcial
        echo ${resto} >> binario
        quociente=$(($quociente/2))
        count=$((${count}+1))
    done
    while [ $count -ne 8 ]; do
        echo "0" >> binario
        count=$((${count}+1))
    done
    nBinario=$(tac binario | tr -d '\n')
    echo -e "Octeto #$i: $decimal\tem binário $nBinario"
    rm binario
done

# nem sabia q no BC tinha um comando específico so para converter numeros conforme a base selecionada

<< questao

3 - Escreva um script que leia um endereço IP, separe os 4 octetos, e imprima-os em formato binário. Ex.:

Digite um endereço IP: 8.8.4.4

Octeto #1: 8 em binário 00001000
Octeto #2: 8 em binário 00001000
Octeto #3: 4 em binário 00000100
Octeto #4: 4 em binário 00000100

questao

echo "fim do script"