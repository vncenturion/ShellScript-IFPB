#!/bin/sh
  
KEY=12345

#aba PROCESSOS
yad --plug=${KEY} --tabnum=1 --text="first tab with text" &> res1 &

#aba RECURSOS
lscpu | tr -s " " | cut -d ":" -f 1,2 | yad --plug=${KEY} --tabnum=2 --text="second tab" --list --no-selection --column=$"Parameter" --column=$"Value" &> res2 &

#aba ESPECIFICAÇÕES
eval exec yad --plug=${KEY} --tabnum=3 --image=drive-harddisk --text="Disk\ usage" --buttons-layout=end \
--multi-progress $(df -h | tail +2 | grep -v snap | \
awk '{printf "--bar=\"<b>%s</b> (%s) [%s/%s]\" %s ", $6, $1, $3, $2, $5}') &> res3 &
#yad --plug=${KEY} --tabnum=3 --text="blablabla" &> res3 &

#janela PRINCIPAL
yad --notebook --center --width=800 --height=450 --title="Informações de processos" --text="$TXT" --button="aplicar filtro" --button="matar processo" --button="sair" --key=${KEY} --tab="Processos" --tab="Recursos" --tab="Especificações"

ipcrm -M ${KEY}
