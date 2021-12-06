lscpu | sed -r "s/:[ ]*/\n/" | yad --plug=$KEY --tabnum=1 --image=cpu --text=$"CPU information" --list --no-selection --column=$"Parameter" --column=$"Value" &
