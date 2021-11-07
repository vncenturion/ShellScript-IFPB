#!/bin/bash
  
echo -e "\nBASH\nO nome do caminho completo usado para executar a instância atual do Bash.\nExemplo:"
echo -e '$ $BASH'
echo -e "${BASH}"

echo -e "\nGROUPS\nUma variável de matriz contendo a lista de grupos dos quais o usuário atual é membro.\nExemplo:"
echo -e '$ $GROUPS'
echo -e "${GROUPS}"

echo -e "\nHOSTNAME\nO nome do host atual.\nExemplo:"
echo -e '$ $HOSTNAME'
echo -e "${HOSTNAME}"

echo -e "\nPWD\nO diretório de trabalho atual conforme definido pelo cd integrado.\nExemplo:"
echo -e '$ $PWD'
echo -e "$PWD"

echo -e "\nSHELL\nEsta variável de ambiente se expande para o nome de caminho completo do shell.\nExemplo:"
echo -e '$ $SHELL'
echo -e "$SHELL"

echo -e "\nUID\nO ID de usuário real numérico do usuário atual. Esta variável é somente leitura.\nExemplo:"
echo -e '$ $UID'
echo -e "$UID"

echo -e "\nPATH\nCaminho para binários, geralmente /bin/ , /sbin/ , /usr/bin/ , /usr/sbin/ , /usr/local/bin , etc."
echo -e "Ao receber um comando, o shell faz automaticamente uma pesquisa na tabela hash nos diretórios listados no caminho do executável."
echo -e 'O caminho é armazenado na variável ambiental, $PATH, uma lista de diretórios, separados por dois pontos.\nExemplo:'
echo -e '$ $PATH'
echo -e "$PATH"

echo -e "\nHOME\nReferencia o direitorio home do usuário atual.\nExemplo:"
echo -e '$ $HOME'
echo -e "$HOME"

echo -e "\n\nPARÂMETROS POSICIONAIS\n"

echo -e '       $0, $1, $2, etc.\n      Parâmetros posicionais, passados pela linha de comando para o script.'
echo -e "       passados para uma função ou definidos para uma variável.\n"
echo -e '       $#\n    Número de argumentos de linha de comando ou parâmetros posicionais.\n'
echo -e '       $*\n    Todos os parâmetros posicionais, vistos como uma única palavra.'

echo -e "\nExemplo, ao chamar um script soma.sh são passados 2 parâmetros, 3 e 5:"
echo -e '\n$ ./soma.sh 3 5\n'
echo -e 'Dentro do script, 3 é armazenado em $1 (primeiro parametro) e 5 em $2 (segundo parametro)'
echo -e 'A variavel $# exibirá 2, pois foram passados 2 parametros.'
echo -e 'Já a variavel $* irá exibir os valores armazenados em todos os parametros passados ao script\n'

<<questao
12 - Escreva um script que exiba pelo menos 8 variáveis criadas automaticamente pelo bash, assim como o seu conteúdo e explique o significado desta variável.
Exemplo:
./vars.sh

$HOME (valor atual: /home/gabigol) variável que guarda o valor do diretório inicial do usuário atual.

questao