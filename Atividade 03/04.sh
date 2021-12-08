#!/bin/bash

if [ "$1" != "" ]; then
    opcao=$1
else
    echo -e "OPÇÕES\n-a listar apenas diretórios;\n-b listar apenas arquivos executáveis; e,\n-c listar apenas links simbólicos.\n"
    read -p "Digite uma das opções: " opcao
fi

if [ "$2" != "" ]; then
    diretorio=$2
else
    diretorio=$(pwd)
fi

echo -e "\n\t"'"Desistir é para os fracos. Por isso que eu nem tento."'

case "${opcao}" in
    "a"|"-a")
        echo -e "\nDIRETÓRIOS EM ${diretorio}\n"
        resultado=$(ls -l "${diretorio}" | tr -s ' ' | grep -e ^d)

        if [ "${resultado}" != "" ]; then
            cut -d ' ' -f 9 <<< $(ls -l "${diretorio}" | tr -s ' ' | grep ^d)
            echo -e "\n----------\nFim da busca\n"
        else
            echo -e "0 diretórios\n"
        fi
    ;;
    "b" | "-b")
        echo -e "\nARQUIVOS EXECUTAVEIS EM ${diretorio}\n"
        resultado=$(ls -l "${diretorio}" | tr -s ' ' | grep -e ^-[-rw]*x)

        if [ "${resultado}" != "" ]; then
            cut -d ' ' -f 9 <<< $(ls -l "${diretorio}" | tr -s ' ' | grep -e ^-[-rw]*x)
            echo -e "\n-----------\nFim da busca\n"
        else
            echo -e "0 arquivos executáveis\n"
        fi
    ;;

    "c" | "-c")
        echo -e "\nLINKS SIMBÓLICOS EM ${diretorio}\n"
        resultado=$(ls -l "${diretorio}" | tr -s ' ' | grep -e ^l)

        if [ "${resultado}" != "" ]; then
            cut -d ' ' -f 9 <<< $(ls -l "${diretorio}" | tr -s ' ' | grep ^l)
            echo -e "\n----------\nFim da busca\n"
        else
            echo -e "0 links simbólicos\n"
        fi
    ;;
    
    *)  echo "Opcao invalida"
    ;;

esac



<< questao

    4. Escreva um script que, exiba uma frase criativa e especial e, baseado em opções passadas por argumentos de linha de comando:
    a. Liste apenas os diretórios de uma pasta
    b. Liste apenas os arquivos executáveis
    c. Liste apenas os links simbólicos
    
    Exemplo: lista.sh -a # lista apenas os diretórios

questao

echo "fim do script"