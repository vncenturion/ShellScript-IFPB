#!/bin/bash

arquivo=$1
numLinha=$(wc -l < ${arquivo})
soma=0

for (( linha=1; linha<=${numLinha}; linha++ )) do

    valor=$(sed -n ${linha}p < ${arquivo} | cut -d ' ' -f 3)
    echo -e "#$linha download = ${valor} bytes"
    soma=$(($soma+$valor))

done

echo -e "Download total = ${soma} bytes"

<< questão

    2 - Dado  um  arquivo  com  a lista de todos  os  downloads efetuados  pelos  usuários  no  último  mês,  deseja-se totalizar quanto cada usuário baixou. Segue o formato do arquivo:

    Nelson www.google.com.br 250
    Arr445 www.testes.com/dbz.wmv 20050
    Nelson www.uol.com.br 300
    Vianna debian.org/9.7.0.iso 800555

questão