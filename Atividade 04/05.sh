#!/bin/bash

arquivo=$1
sed -E 's/(..)(.....)(....)(.*)/(\1)\2-\3 \4/' < ${arquivo}

<< questão

    5 - Escreva um script que, dado uma lista de números de telefone no formato xxxxxxxxxxx, coloque cada telefone no formato (xx) x xxxx-xxxx. Exemplo:

    Para o seguinte arquivo:

        12345678900 Alberto
        11111111111 Augusto
        83987654321 Almirante

    A saída deve ser:

        (12) 3 4567-8900 Alberto
        (11) 1 1111-1111 Augusto
        (83) 9 8765-4321 Almirante

    Use a criatividade para os nomes de contatos na sua lista de números.

questão