#!/bin/bash 

resultado=$(bc <<< "scale=2;( $1 + 1 ) * ( $2 + 2 )")
echo $resultado

<<questao
10 - Melhore o script da questão anterior para que aceite números fracionários, isto é, números com casas decimais. Por exemplo:

$ ./x.sh 0.0 2.4
> 4.4

questao

echo "fim do script"