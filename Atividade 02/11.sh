#!/bin/bash



<< questao
11 - Escreva um script chamado 11.sh. Este deve receber um ou mais parâmetros de linha de comando. Se um destes parâmetros for “logica”, o script deve imprimir uma ajuda sobre os parâmetros lógicos do comando test. Se um destes parâmetros for “aritmetica”, o script deve imprimir uma ajuda sobre os parâmetros aritméticos do comando test. Se um destes parâmetros for “strings”, o script deve imprimir uma ajuda sobre os parâmetros para strings do comando test. Se um destes parâmetros for “variáveis”, o script deve imprimir uma ajuda sobre os parâmetros para variáveis do comando test. Se um destes parâmetros for “arquivos”, o script deve imprimir uma ajuda sobre os parâmetros sobre arquivos do comando test.

$ ./11.sh arquivos

> Ajuda sobre o comando test
> Opções para testes de arquivos:
> test -e <arq>: retorna TRUE caso o arquivo arq exista
> ...

questao

echo "fim do script"