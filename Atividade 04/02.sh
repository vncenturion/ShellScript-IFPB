#!/bin/bash

arquivo=$1
usuarios=( )
nomes=$(cut -d ' ' -f 1 lista-downloads.txt | sort -u)
numLinhas=$(wc -l < ${arquivo})
soma=0
index=0

#gerar lista com usuarios
for nome in ${nomes}; do
    usuarios=( ${usuarios[*]} $nome )
done
echo  ${usuarios[*]}

function buscaIndex {
    
    for (( i=0; i<${#usuarios[*]}; i++ )) do
        if [ "$1" == "${usuarios[$i]}" ]; then
            index=$i
        fi 
    done

}

for (( linha=1; linha<=${numLinhas}; linha++ )) do #joga valores de downloads para arquivo externo associado ao index do usuario no array

    nome=$(sed -n ${linha}p < ${arquivo} | cut -d ' ' -f 1)
    buscaIndex $nome
    valor=$(sed -n ${linha}p < ${arquivo} | cut -d ' ' -f 3)
    sed -n ${linha}p < ${arquivo} | cut -d ' ' -f 3 >> usuario${index}
    echo -e "Donwload n #${linha} ; usuario: ${nome}:${index} ; tamanho = ${valor} bytes"

done

for (( i=0; i<${#usuarios[*]}; i++ )) do
    
    somatorio=$(cat usuario${i})
    for valor in $somatorio; do
        soma=$(($soma + $valor))
    done
    echo -e "Usuario: ${usuarios[$i]} ; Total: $soma bytes."
    soma=0
    rm usuario${i}

done

<< questão

    2 - Dado  um  arquivo  com  a lista de todos  os  downloads efetuados  pelos  usuários  no  último  mês,  deseja-se totalizar quanto cada usuário baixou. Segue o formato do arquivo:

    Nelson www.google.com.br 250
    Arr445 www.testes.com/dbz.wmv 20050
    Nelson www.uol.com.br 300
    Vianna debian.org/9.7.0.iso 800555

questão