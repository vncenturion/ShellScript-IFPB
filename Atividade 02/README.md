# ShellScript-IFPB:  ATIVIDADE 02

1. Escreva um script que exibe uma ajuda sobre redirecionadores. Para cada redirecionador estudado ( >, >>, 2>, 2>>, &>, &>>, <, <<, <<<, e |) o script deve imprimir o redirecionador, uma explicação sobre o seu funcionamento e um exemplo útil de uso. (Use suas próprias palavras, evite apenas copiar de alguma fonte O.0).

2. Escreva um script que receba 3 nomes de arquivos passados como argumentos de linha de comando. Use o comando ls usando estes arquivos como argumentos. Redirecione todos os erros para o arquivo erro.log e todas as saídas corretas para o arquivo ok.log. Por exemplo:

    ```
        $ ./2.sh a.txt b.txt c.txt
    ```


3. Escreva um script que peça para o usuário digitar 2 números inteiros. Imprima o menor e o maior dos dois. Use o formato abaixo.

    ```
        $ ./3.sh 12 21
        > Menor: 12
        > Maior: 21
    ```

4. Escreva um script que receba três nomes de diretórios como parâmetros de linha de comando e, usando exatamente uma linha de comando para cada diretório e operadores condicionais (&& ou ||) imprima SIM caso o diretório exista ou uma frase criativa, caso contrário.


5. Escreva um script que peça para o usuário digitar 4 nomes de arquivos e imprima o nome daquele que possui o maior número de linhas. Caso algum arquivo não exista, imprima erro: o arquivo ‘<nome_do_arquivo>’ não existe, e saia do script.


6. Escreva um script que recebe o nome de um arquivo como argumento de linha de comando e imprime BAD caso este arquivo não exista ou possua mais que 3 linhas. Caso contrário, exiba o nome do arquivo e a última linha do mesmo.


7. Escreva um script que peça para o usuário digitar 4 números COM CASAS DECIMAIS. Imprima o menor deles. Use o bc.

    ```shell
        $ ./7.sh
        > Digite quatro números com casas decimais: 12.5 21.3 1.0 2.0
        > 1.0
    ```

8. Escreva um script que imprima todos os números ímpares entre 0 e 108. Melhore o script para que imprima todos os números ímpares entre a e b, sendo a o primeiro parâmetro de linha de comando, enquanto que b é o segundo.

9. Escreva um script que peça para o usuário digitar dois números, a e b, e calcule (e exiba na tela) a soma de todos os números de a até b, sem incluir a e b.

    ```shell
        $ ./9.sh 1 4
        > 5
    ```

10. Escreva um script que receba vários nomes de arquivo como parâmetros de linha de comando (o número de parâmetros pode variar de execução para execução) e imprima o nome de cada arquivo passado seguido de SIM, caso o arquivo exista, e de NAO caso contrário. Caso todos os arquivos passados existam, o script deve exibir uma mensagem criativa.

    ```shell
        $ ./10.sh a.txt
        > a.txt SIM
        > Hoje tem gol do Gabigol!

        $ ./10.sh a b c d e f
        > a SIM
        > b SIM
        > c NAO
        > d NAO
        > e SIM
        > f SIM
    ```

11. Escreva um script chamado 11.sh. Este deve receber um ou mais parâmetros de linha de comando. Se um destes parâmetros for “logica”, o script deve imprimir uma ajuda sobre os parâmetros lógicos do comando test. Se um destes parâmetros for “aritmetica”, o script deve imprimir uma ajuda sobre os parâmetros aritméticos do comando test. Se um destes parâmetros for “strings”, o script deve imprimir uma ajuda sobre os parâmetros para strings do comando test. Se um destes parâmetros for “variáveis”, o script deve imprimir uma ajuda sobre os parâmetros para variáveis do comando test. Se um destes parâmetros for “arquivos”, o script deve imprimir uma ajuda sobre os parâmetros sobre arquivos do comando test.
  
    ```shell
        $ ./11.sh arquivos

        > Ajuda sobre o comando test
        > Opções para testes de arquivos:
        > test -e <arq>: retorna TRUE caso o arquivo arq exista
        > ...
    ```
    
12. Escreva um script que imprima a palavra DIRS e abaixo liste todos os diretórios da pasta atual. Em seguida imprima a palavra FILES e abaixo liste todos os arquivos (sem diretórios ou links) da pasta atual. Por fim, imprima a palavra LINKS e abaixo liste todos os links simbólicos da pasta atual. Use for, if e o comando test (pode ser a versão curta: [ ]).

    ```shell
        $ ./12.sh
        > DIRS-------------------------------
        > a/
        > b/
        > c/
        >
        > FILES------------------------------
        > x.txt
        > y.zip
        > z.doc
        >
        > LINKS------------------------------
        > j
        > k
        > l
    ```
