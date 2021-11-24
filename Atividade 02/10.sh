#!/bin/bash
  
controle=1 #flag de controle de exibição de mensagem final

for arquivo in $* ; do
        if [ -e ${arquivo} ]; then #verifica existencia do arquivo
                echo "${arquivo} SIM" #exibe confirmação afirmativa
        else
                echo "${arquivo} NAO" #exibe confirmaçao negativa
                controle=0 #desativa a flag
        fi
done

if [ ${controle} -eq 1 ]; then #verifica flag para exibiçao da msg final
        echo -e "\nEu prefiro morrer do que perder a vida!!!\n(DO 8, Chaves)"
fi


<< questao
10 - Escreva um script que receba vários nomes de arquivo como parâmetros de linha de comando (o número de parâmetros pode variar de execução para execução) e imprima o nome de cada arquivo passado seguido de SIM, caso o arquivo exista, e de NAO caso contrário. Caso todos os arquivos passados existam, o script deve exibir uma mensagem criativa.

$ ./10.sh a.txt
> a.txt SIM
> Hoje tem gol do Gabigol!

$ ./10.sh a b c d e f
> a SIM
> b SIM
> c NAO
> d NAO
> e SIM
> f SIM

questao

echo "fim do script"