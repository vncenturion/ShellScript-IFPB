#!/bin/bash

read -s -p "Digite a senha bem legal: " senha
echo
aux=$(echo "${senha}" | grep -E "[[:alnum:]]{6,}" | grep -E "[[:upper:]]" | grep -E "[[:digit:]]")
if [ "${senha}" == "${aux}" ]; then
        echo -e "\nEita senhazinha boa!\nVou cadastrar!\n"
else
        echo -e "\nEita! Prestou não!\nTá fraca demais! Tente novamente!\n"
fi

<< questao

    5. Escreva um script que valide as seguintes regras para criação de uma senha: pelo menos 6 caracteres, uma letra maiúscula e um número. Validar significa receber uma senha e dizer se esta obedece ao padrão ou não (se possível a senha não deve ser exibida enquanto o usuário digita).

questao

echo "fim do script"