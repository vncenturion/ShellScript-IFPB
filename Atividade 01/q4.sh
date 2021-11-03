#!/bin/bash

mkdir "$HOME/$(date '+%H-%d-%m-%y')"
cp -R * "$HOME/$(date '+%H-%d-%m-%y')"

<<questao
4 - Escreva um script que crie um diretório ./DATA na sua pasta home, onde DATA deve ser a data atual do sistema obtida a partir do comando date (no formato hora-dia-mes-ano); e copie todos os arquivos do diretório atual para este novo diretório. Pode usar, se quiser a variável $HOME.
questao

echo "fim do script"