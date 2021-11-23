#!/bin/bash
  
arq1=$1
arq2=$2
arq3=$3
arq4=$4
contaLinha=0
maior=""

for arquivo in ${arq1} ${arq2} ${arq3} ${arq4}; do

    if [ -e "${arquivo}" ]; then

        if (( $(wc -l < "${arquivo}") >= ${contaLinha} )); then
            contaLinha=$(wc -l < "${arquivo}")
            maior="${arquivo}"
        fi

    else
        echo -e "o arquivo < ${arquivo} > não existe"
        exit
    fi
    
done

echo -e "Arquivo com maior número de linhas: ${maior}"
echo -e "Numero de linhas do arquivo: ${contaLinha}"


<< questao
5 - Escreva um script que peça para o usuário digitar 4 nomes de arquivos e imprima o nome daquele que possui o maior número de linhas. Caso algum arquivo não exista, imprima erro: o arquivo ‘<nome_do_arquivo>’ não existe, e saia do script.

questao

echo "fim do script"