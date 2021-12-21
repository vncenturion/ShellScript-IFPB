#!/bin/bash

arquivo=$1
sed -E 's/[[:digit:]]*\.[[:digit:]]*\.[[:digit:]]*\.[[:digit:]]/**!!CENSU--RADO!!**/g' < ${arquivo}

<< questão

    4 - Escreva um script que remova todos os endereços IP de um arquivo de entrada, alterando o seu valor para **!!CENSU--RADO!!**.

questão