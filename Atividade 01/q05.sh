#!/bin/bash 

nome_dir="$HOME/$(date '+%H-%d-%m-%y')"
mkdir ${nome_dir} #cria direitorio
cp -R * ${nome_dir} #copia conteudo do diretorio atual para diretorio criado
tar -cvzf backup.tar.gz ${nome_dir} #cria, empacota e compacta arquivos do diretorio para arquivo tar
rm -r ${nome_dir} #remove o diretorio criado

<<questao
5 - Melhore o script anterior para que este compacte o novo diretório criado, removendo este diretório após a sua compactação.
(o arquivo compactado deve ser copiado para o diretório inicial (o diretório atual, no caso).
questao

echo "fim do script"