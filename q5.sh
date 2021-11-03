#!/bin/bash 

mkdir "$HOME/$(date '+%H-%d-%m-%y')" #cria direitorio
cp -R * "$HOME/$(date '+%H-%d-%m-%y')" #copia conteudo do diretorio atual para diretorio criado
tar -cvzf backup.tar.gz "$HOME/$(date '+%H-%d-%m-%y')" #cria, empacota e compacta arquivos do diretorio para arquivo tar
rm -r "$HOME/$(date '+%H-%d-%m-%y')" #remove o diretorio criado

<<questao
5 - Melhore o script anterior para que este compacte o novo diretório criado, removendo este diretório após a sua compactação.
(o arquivo compactado deve ser copiado para o diretório inicial (o diretório atual, no caso).
questao

echo "fim do script"