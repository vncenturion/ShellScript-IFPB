#!/bin/bash

#!/bin/bash
arq1=${1}
arq2=${2}
arq3=${3}

ls ${arq1} ${arq2} ${arq3} > ok.log 2> erro.log

<< questao
2 - Escreva um script que receba 3 nomes de arquivos passados como argumentos de linha de comando. Use o comando ls usando estes arquivos como argumentos. Redirecione todos os erros para o arquivo erro.log e todas as saídas corretas para o arquivo ok.log. Por exemplo:

$ ./2.sh a.txt b.txt c.txt


questao

echo "fim do script"