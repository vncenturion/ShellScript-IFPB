# ShellScript-IFPB:  ATIVIDADE 03

1. Escreva um script que use o comando tr para substituir todos os números em um arquivo por caracteres ‘X’.

2. Escreva um script que use o comando tr para remover linhas vazias de um arquivo, isto é, linhas que possuem apenas o enter (\n).

3. Escreva um script que leia um endereço IP, separe os 4 octetos, e imprima-os em formato binário. Ex.:

    ```
        Digite um endereço IP: 8.8.4.4

        Octeto #1: 8 em binário 00001000
        Octeto #2: 8 em binário 00001000
        Octeto #3: 4 em binário 00000100
        Octeto #4: 4 em binário 00000100
    ```

> **Todas as soluções daqui em diante devem usar o comando grep com expressões regulares.**

4. Escreva um script que, exiba uma frase criativa e especial e, baseado em opções passadas por argumentos de linha de comando:
    
    a. Liste apenas os diretórios de uma pasta

    b. Liste apenas os arquivos executáveis

    c. Liste apenas os links simbólicos
    
    Exemplo: lista.sh -a # lista apenas os diretórios

5. Escreva um script que valide as seguintes regras para criação de uma senha: pelo menos 6 caracteres, uma letra maiúscula e um número. Validar significa receber uma senha e dizer se esta obedece ao padrão ou não (se possível a senha não deve ser exibida enquanto o usuário digita).

