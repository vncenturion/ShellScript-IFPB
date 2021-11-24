#!/bin/bash

ListaArquivos=$(ls)

echo -e "\nDIRS-------------------------------"
for arquivo in ${ListaArquivos}; do
        if [ -d "${arquivo}" ]; then
                echo "${arquivo}"
        fi
done
echo -e "\nFILES-------------------------------"
for arquivo in ${ListaArquivos}; do
        if [[ -f "${arquivo}" && ! -h "${arquivo}" ]]; then
                echo "${arquivo}"
        fi
done
echo -e "\nLINKS-------------------------------"
for arquivo in ${ListaArquivos}; do
        if [ -h "${arquivo}" ]; then
                echo "${arquivo}"
        fi
done


#echo -e "DIRS-------------------------------"
#find . -type l
#echo -e "\nFILES-------------------------------"
#find . -type f
#echo -e "\nLINKS-------------------------------"
#find . -type d


<< questao
12 - Escreva um script que imprima a palavra DIRS e abaixo liste todos os diretórios da pasta atual. Em seguida imprima a palavra FILES e abaixo liste todos os arquivos (sem diretórios ou links) da pasta atual. Por fim, imprima a palavra LINKS e abaixo liste todos os links simbólicos da pasta atual. Use for, if e o comando test (pode ser a versão curta: [ ]).


$ ./12.sh
> DIRS-------------------------------
> a/
> b/
> c/
>
> FILES------------------------------
> x.txt
> y.zip
> z.doc
>
> LINKS------------------------------
> j
> k
> l

questao

echo "fim do script"