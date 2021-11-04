#!/bin/bash

echo -e "BASH\nO nome do caminho completo usado para executar a instância atual do Bash.\n"

echo -e "COLUMNS\nUsado pelo selectcomando para determinar a largura do terminal ao imprimir listas de seleção.\n"

echo -e "GROUPS\nUma variável de matriz contendo a lista de grupos dos quais o usuário atual é membro.\n"

echo -e "HOSTNAME\nO nome do host atual.\n"

echo -e "PWD\nO diretório de trabalho atual conforme definido pelo cd integrado.\n"

echo -e "SHELL\nEsta variável de ambiente se expande para o nome de caminho completo do shell.\n"

echo -e "UID\nO ID de usuário real numérico do usuário atual. Esta variável é somente leitura.\n"

echo -e "PATH\nCaminho para binários, geralmente /bin/ , /sbin/ , /usr/bin/ , /usr/sbin/ , /usr/local/bin , etc."
echo -e "Ao receber um comando, o shell faz automaticamente uma pesquisa na tabela hash nos diretórios listados no caminho do executável."
echo -e 'O caminho é armazenado na variável ambiental, $PATH, uma lista de diretórios, separados por dois pontos.\n'

echo -e "HOME\nReferencia o direitorio home do usuário atual.\n"

echo -e "PARÂMETROS POSICIONAIS\n"

echo -e '       $0, $1, $2, etc.\n      Parâmetros posicionais, passados ​​da linha de comando para o script, passados ​​para uma função ou definidos para uma variável.\n'

echo -e '       $#\n    Número de argumentos de linha de comando ou parâmetros posicionais.\n'

echo -e '       $*\n    Todos os parâmetros posicionais, vistos como uma única palavra.'

<<questao
12 - Escreva um script que exiba pelo menos 8 variáveis criadas automaticamente pelo bash, assim como o seu conteúdo e explique o significado desta variável.

Exemplo:
./vars.sh

$HOME (valor atual: /home/gabigol) variável que guarda o valor do diretório inicial do usuário atual.

$1 (valor atual: 12) Variável que guarda o valor do primeiro argumento passado pela linha de comando.

...
questao
