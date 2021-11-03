#!/bin/bash

echo -e "\nSUBSTITUIÇÃO DE VARIÁVEL\nTambém chamada expansao de variável, substituiçào de parametro ou simplesmente substituição."
echo -e "O shell substitui literalmente cara referência a qualquer variável por seu valor atribuido."
echo -e "Isso é realizado durante a avaliação da linha de comando, de modo que ocorre antes da execução do comando."
echo -e "Exemplos:\n"
echo -e '       Usuario = Vinicius'
Usuario="Vinicius"
echo -e '       O nome do usuário é $Usuario'
echo -e "       O nome do usuário é $Usuario\n"
echo -e "       A=10"
echo -e "       B=20"
A=10
B=20
echo -e '       SOMA = $A + $B'
echo -e "       SOMA = $A + $B"
echo -e "\nSUBSTITUIÇÃO DE SHElL"
echo -e "Também conhecido como substituição de comandos."
echo -e "Permite que o shell substitua o comando fornecido entre" '$()' "por seu resultado."
echo -e "Exemplos:\n"
echo -e '       Data = $(date)'
echo -e "       Data = $(date)\n"
echo -e '       Seu diretório atual é: $(pwd)'
echo -e "       Seu diretório atual é: $(pwd)"
echo -e "\nSUBSTITUIÇÃO ARITMÉTICA"
echo -e "Substituição aritmética (ou shell arithmetics), permite realizar diversas operações com números inteiros no shell script."
echo -e "Exemplos:\n"
echo -e '       Soma = $((10+5))'
echo -e "       Soma = $((10+5))"
Soma=$(( 10 + 5 ))
echo -e '       Multip = $(( $Soma * 2 ))'
echo -e '       Multip = $((' "$Soma" '* 2 )) <-- note também a substituição de variável'
echo -e "       Multip = $(( $Soma * 2 ))\n"


<<questao
6 - Escreva um script que imprime os conceitos de substituição de variáveis, de substituição de shell, e de substituição aritmética, com exemplos.
questao

echo "fim do script"