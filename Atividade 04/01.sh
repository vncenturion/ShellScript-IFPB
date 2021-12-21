#!/bin/bash

arquivo=$1

sed -E -e 's/ {2,}[[:alnum:]]* [[:alpha:]].*//'  < ${arquivo} > lista-meninos.txt #apaga tudo que vem depois 2 espaços até fim
sed -E -e 's/[[:alnum:]]* [[:alpha:]].* {2,}//' < ${arquivo} > lista-meninas.txt #apaga do primeiro alfanumerioco até 2 ou mais espaços

#exibe resultados:
sed -E -e 's/ {2,}.*//'  < ${arquivo} 
echo ''
sed -E -e 's/[[:alnum:]]*.* {2,}//' < ${arquivo} 

<< questão

    1 - Considere o seguinte arquivo de entrada com a lista dos dez nomes mais comuns no Brasil para Meninos  e  Meninas. Pede-se  que  o  arquivo  seja  separado em dois,  um apenas para  meninos e outro para meninas.

    Ranking Meninos       Ranking Meninas

    1 Miguel              1 Sophia
    2 Davi                2 Alice
    3 Arthur              3 Julia
    4 Pedro               4 Isabella
    5 Gabriel             5 Manuela
    6 Bernardo            6 Laura
    7 Lucas               7 Luiza
    8 Matheus Luz         8 Valentina
    9 Rafael              9 Giovanna
    10 Heitor             10 Maria Eduarda

questão