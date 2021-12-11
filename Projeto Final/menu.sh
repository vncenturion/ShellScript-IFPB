#!/bin/sh                                                                                      
  
KEY=12345

controle=1

#aba PROCESSOS                                                                                 
#yad --plug=${KEY} --tabnum=1 --text="first tab with text"                             
    ps -eo "%p;%y;%U;%C;%x;%c" | tr -d " " | grep -E ^[[:digit:]] | tr ";" "\n" | \
        yad --plug=${KEY} --tabnum=1 --text="Processos atuais" --list --column="PID" --column="TTY" --column="USER" --column="%CPU"
        --column="TIME" --column="COMMAND" &> res1 &

#aba RECURSOS                                                                                  
    lscpu | head -24 | tr -s ' ' | tr ':' '\n' | \
        yad --plug=${KEY} --tabnum=2 --text="second tab" --list --no-selection --column="Componente" --column="Descrição" &> res2 &

#aba ESPECIFICAÇÕES                                                                            
    eval exec yad --plug=${KEY} --tabnum=3 --image=drive-harddisk --text="Disk\ usage" --buttons-layout=end \
        --multi-progress $(df -h | tail +2 | grep -v snap | \
        awk '{printf "--bar=\"<b>%s</b> (%s) [%s/%s]\" %s ", $6, $1, $3, $2, $5}') &> res3 &

#janela PRINCIPAL                                                                              
    yad --notebook --center --width=800 --height=450 --title="Gerenciador de processos" --text="$TXT" \
        --button="aplicar filtro" --button="matar processo" --button="sair" \
        --key=${KEY} --tab="Processos" --tab="Recursos" --tab="Especificações"

ipcrm -M ${KEY}
