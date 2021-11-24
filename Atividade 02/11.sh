#!/bin/bash
  
aritmetica='
\nARITMETICA
\nVerificação de condições relativas a inteiros:

\n-gt (greater than)\t$test num1 -gt num2\tcorresponde a maior que
\n-ge (greater or equal)\t$test num1 -ge num2\tcorresponde a maior ou igual que
\n-lt (less than)\t\t$test num1 -lt num2\tcorresponde a menor que
\n-le (less or equal)\t$test num1 -le num2\tcorresponde a menor ou igual que
\n-eq (equal)\t\t$test num1 -eq num2\tcorresponde a igual que
\n-ne (not equal)\t\t$test num1 -ne num2\tcorresponde a diferente de

\nTeste de condições aritméticas com (()):

\nPermite o teste de condições com números inteiros, do tipo:
\n$ (( num1 > num2))
\n$ (( num1 >= num2))
\n$ (( num1 < num2))
\n$ (( num1 <= num2))
\n$ (( num1 == num2))
\n$ (( num1 != num2))
'

logica='
\nLOGICA
\nVerificação de condições logicas para expressões:

\n! (logical NOT)\t\t\t$ !EXPRESSÃO\t\tI\tnverte o resultado da expressão passada
\n&& ou -a (logical AND)\t\t$t EXPRESSÃO1 && EXPRESSÃO2\tas duas expressões são verdade
\n|| ou -o (logical OR)\t\t$ EXPRESSÃO1 || EXPRESSÃO2\tpelo menos 1 das expressões é verdade
'

strings='
\nSTRINGS
\nVerificação de condições relativas a strings:

\n-n (length is nonzero)\t$ -n string\t\tString não nula
\n-z (length is zero)\t$ -z string\t\tString nula
\n= (equal)\t\t$ string1 = string2\tAs duas strings são iguais
\n!= (not equal)\t\t$ string1 != string2\tAs strings são distintas
'

arquivos='
\nARQUIVOS
\nVerificação de condiçòes relativas a arquivos:

\n-ef\t$ arq1 -ef arq2\t\tAmbos arquivos tem o mesmo número de inode
\n-nt\t$ arq1 -nf arq2\t\tArq1 é mais recente que arq2
\n-ot\t$ arq1 -of arq2\t\tArq1 é mais antigo que arq2
\n-b\t$ -b arq\t\tArq existe e é um bloco especial
\n-c\t$ -c arq\t\tArq existe e é um caractere especial
\n-e\t$ -d arq\t\tArq existe e é um diretório
\n-f\t$ -e arq\t\tArq existe
\n-h\t$ -f arq\t\tArq existe e é um arquivo normal/comum
\n-h\t$ -h arq\t\tArq existe e é um link simbólico
\n-L\t$ -L arq\t\tArq existe e é um link simbólico
\n-r\t$ -r arq\t\tArq existe e a permissão de leitura foi concedida
\n-s\t$ -s arq\t\tArq existe e possui tamanho maior que zero
\n-w\t$ -w arq\t\tArq existe e a permissão de escrita foi concedida
\n-x\t$ -x arq\t\tArq existe e a permissão de execuçao foi concedida
'

variaveis='
\nVARIÁVEIS
\nVerificação de condições relativas a variáveis:
\n-v\t\t$ test -v VAR\t\tRetorna verdadeiro se a variável VAR existe
\n-R\t\t$ test -R VAR\t\tRetorna verdadeiro se a variável VAR existe é um nome de referência
'

for parametro in $*; do
    case "${parametro}" in
    "aritmetica") 
        echo -e $aritmetica
        ;;
    "logica") 
        echo -e $logica
        ;;
    "strings") 
        echo -e $strings
        ;;
    "arquivos")
        echo -e $arquivos
        ;;
    "variaveis" | "variáveis")
        echo -e $variaveis
        ;;
    esac
done

<< questao
11 - Escreva um script chamado 11.sh. Este deve receber um ou mais parâmetros de linha de comando. 
Se um destes parâmetros for “logica”, o script deve imprimir uma ajuda sobre os parâmetros lógicos do comando test. 
Se um destes parâmetros for “aritmetica”, o script deve imprimir uma ajuda sobre os parâmetros aritméticos do comando test. 
Se um destes parâmetros for “strings”, o script deve imprimir uma ajuda sobre os parâmetros para strings do comando test.
Se um destes parâmetros for “variáveis”, o script deve imprimir uma ajuda sobre os parâmetros para variáveis do comando test.
Se um destes parâmetros for “arquivos”, o script deve imprimir uma ajuda sobre os parâmetros sobre arquivos do comando test.

$ ./11.sh arquivos

> Ajuda sobre o comando test
> Opções para testes de arquivos:
> test -e <arq>: retorna TRUE caso o arquivo arq exista
> ...

questao

echo "fim do script"