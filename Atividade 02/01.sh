#!/bin/bash

echo -e 'Redirecionadores > e >>'
echo -e '> ' "Redirecionam a saída padrão (stdout) para um arquivo.\nCria o arquivo destino, ou o sobrescreve caso já exista."
echo -e '>> ' "Redirecionam a saída padrão (stdout) para um arquivo, realizando um acréscimo ao fim do arquivo (output append).\nTambém cria o arquivo destino caso não exista."
echo -e '$ ls -a /home/usuario1 > conteudo.txt'
echo -e '$ ls -a /home/usuario2 >> conteudo.txt'

echo -e 'Redirecionadores 2> e 2>>'
echo -e '2> ' "Redirecionam a saída de erro (stderr) para um arquivo.\nCria o arquivo destino, ou o sobrescreve caso já exista."
echo -e '2>> ' "Redirecionam a saída de erro (stderr) para um arquivo, realizando um acréscimo ao fim do arquivo (output append).\nTambém cria o arquivo destino caso não exista."
echo -e '$ ls -a /home/usuario3 2> erroLog.txt'
echo -e 'erroLog.txt iria conter uma mensagem de erro caso o diretório usuario3 não existisse, do tipo: ls: cannot acess ....'
echo -e '$ ls -a /home/usuario4 2>> erroLog.txt'
echo -e 'erroLog.txt iria exibir a mensagem anterior apenas, caso não houvesse nenhum erro na operação; ou algum acrescimo ao final do arquivo caso  exista um erro.'

echo -e 'Redirecionadores &> e &>>'
echo -e '&> ' "Redirecionam ambas saídas (stdout e stderr) para um arquivo.\nCria o arquivo destino, ou o sobrescreve caso já exista."
echo -e '&>> ' "Redirecionam ambas saídas (stdout e stderr) para um arquivo, realizando um acréscimo ao fim do arquivo (output append).\nTambém cria o arquivo destino caso não exista."
echo -e '$ ls -a /home/usuario &> relatorio.txt'
echo -e 'relatorio.txt iria ou conter o conteúdo listado do diretorio passado, ou uma mensagem de erro caso o diretório não existisse, do tipo: ls: cannot acess ....'
echo -e '$ ls -a /home/usuario2 &>> relatorio.txt'
echo -e 'relatorio.txt iria exibir a mensagem anterior, e algum acrescimo ao final do arquivo, podendo ser uma mensagem de erro ou o conteúdo listado do diretorio passado.'


<< questao
1 - Escreva um script que exibe uma ajuda sobre redirecionadores. Para cada redirecionador estudado ( >, >>, 2>, 2>>, &>, &>>, <, <<, <<<, e |) o script deve imprimir o redirecionador, uma explicação sobre o seu funcionamento e um exemplo útil de uso. (Use suas próprias palavras, evite apenas copiar de alguma fonte O.0).

questao

echo "fim do script"