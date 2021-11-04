# ShellScript-IFPB:  ATIVIDADE 01

1. Escreva um script que imprima uma frase motivacional fofinha =-).

2. Escreva um script que pergunte ao usuário o nome de 4 diretórios e salve no arquivo out.txt todo o conteúdo destes 4 diretórios.

3. Melhore o script anterior para que os nomes dos 4 diretórios sejam passados como parâmetros de linha de comando.

4. Escreva um script que crie um diretório ./DATA na sua pasta home, onde DATA deve ser a data atual do sistema obtida a partir do comando date (no formato hora-dia-mes-ano); e copie todos os arquivos do diretório atual para este novo diretório. Pode usar, se quiser a variável $HOME.

5. Melhore o script anterior para que este compacte o novo diretório criado, removendo este diretório após a sua compactação. (o arquivo compactado deve ser copiado para o diretório inicial (o diretório atual, no caso).

6. Escreva um script que imprime os conceitos de substituição de variáveis, de substituição de shell, e de substituição aritmética, com exemplos.

7. Escreva um script que peça para o usuário digitar um número inteiro. Armazene este número na variável y. Faça a variável y receber o valor y + 42. Imprima na tela o novo valor de y.

8. Escreva um script que soma 2 números passados como argumentos de linha de comando. Por exemplo:
  
    ```shell
    $ ./a.sh 20 40
    > 60
    ```

9. Escreva um script que receba dois argumentos passados pela linha de comando, digamos a e b, e imprima o valor da expressão (a+1) vezes (b+2). Por exemplo:

    ```shell
    $ ./x.sh 0 2
    > 4
    ```

10. Melhore o script da questão anterior para que aceite números fracionários, isto é, números com casas decimais. Por exemplo:

    ```shell
    $ ./x.sh 0.0 2.4
    > 4.4
    ```
11. Escreva um script que recebe 3 nomes de arquivo como parâmetros de linha de comando e imprime a soma dos números de linhas dos 3 arquivos. Utilize a substituição de shell, substituição aritmética e o comando wc -l para contar o número de linhas de cada arquivo. Por exemplo:
  
    ```shell
    $ ./z.sh a.txt b.txt c.txt
    > 14
    ```
    
12. Escreva um script que exiba pelo menos 8 variáveis criadas automaticamente pelo bash, assim como o seu conteúdo e explique o significado desta variável. Exemplo:

    ```shell
    ./vars.sh

    $HOME (valor atual: /home/gabigol) variável que guarda o valor do diretório inicial do usuário atual.

    $1 (valor atual: 12) Variável que guarda o valor do primeiro argumento passado pela linha de comando.
    ```
