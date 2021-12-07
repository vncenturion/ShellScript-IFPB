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
    diretorio="."
fi

echo -e "\nDesistir é para os fracos. Por isso que eu nem tento.\n"

case "${opcao}" in
        "a"|"-a")
                echo -e "\nDIRETÓRIOS EM ${diretorio}"
                cut -d ' ' -f 9 <<< $(ls -l "${diretorio}" | tr -s ' ' | grep ^d)
        ;;
        "b" | "-b")
                echo -e "\nARQUIVOS EXECUTAVEIS EM ${diretorio}"
                ls -l "${diretorio}" | grep "^-" | awk '{print $9}'
                cut -d ' ' -f 9 <<< $(ls -l "${diretorio}" | tr -s ' ' | grep -e ^-[-r][-w]x -e ^-.*[-w][-r][-w]x)
        ;;
        "c" | "-c")
                echo -e "\nLINKS SIMBÓLICOS EM ${diretorio}"
                cut -d ' ' -f 9 <<< $(ls -l "${diretorio}" | tr -s ' ' | grep ^l)
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