#!/bin/bash

controle="1"

while [ "${controle}" != "0" ]; do
    
    clear
    echo -e "MENU"
    echo -e ""
    echo -e "r - Digitar o nome de um arquivo que será processado."
    echo -e "a - Remover todas as letras do arquivo."
    echo -e "b - Remover todos os dígitos do arquivo."
    echo -e "c - Substituir todos os caracteres que não são letras nem dígitos do arquivo por ~."
    echo -e "q - Sair do script"
    echo -e ""
    read -p "Digite uma opção: " opcao

    case "${opcao}" in

        "r"|"R")

            read -p "Digite o nome do arquivo a ser processado: " arquivo
            
            if [ ! -e "${arquivo}" ]; then
            
                echo -e "o arquivo < ${arquivo} > não existe.\n"
                read -p "tecle < ENTER > para voltar"

            fi
        ;;
        "a"|"A")
            
            if [ ! -e "${arquivo}" ]; then
            
                echo -e "o arquivo < ${arquivo} > não existe.\n"
                read -p "tecle < ENTER > para voltar"

            else
                sed -E -e 's/[[:alpha:]]//g' < ${arquivo} > ${arquivo}-processado.txt
            fi
            
        ;;
        "b"|"B")
            
            if [ ! -e "${arquivo}" ]; then
            
                echo -e "o arquivo < ${arquivo} > não existe.\n"
                read -p "tecle < ENTER > para voltar"

            else
                sed -E -e 's/[[:digit:]]//g' < ${arquivo} > ${arquivo}-processado.txt
            fi
        ;;
        "c"|"C")

            if [ ! -e "${arquivo}" ]; then
            
                echo -e "o arquivo < ${arquivo} > não existe.\n"
                read -p "tecle < ENTER > para voltar"

            else
                sed -E -e 's/[^[:alnum:]]/~/g' < ${arquivo} > ${arquivo}-processado.txt
            fi
        ;;
        "q"|"Q")
            controle="0"
        ;;
        *)  echo "Opcao inválida"
        ;;

    esac

done

<< questão

    3 - Escreva um script que exiba um menu que, usando o sed:

    r - Digite o nome de um arquivo que será processado.
    a - Remova todas as letras do arquivo.
    b - Remova todos os dígitos do arquivo.
    c - Substitua todos os caracteres que não são letras nem dígitos do arquivo por ~.
    q - Saia do script.

questão