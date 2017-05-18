#!/bin/sh

echo "Hai chiesto aiuto, ecco le opzioni:"
echo "1: spegne il mac"
echo "2: riavvia il mac"
echo "3: forza il riavvio del finder"
echo "4: forza lo spegnimento del mac"
echo "5: forza il riavvio del mac"

function parla() {
  say "Hai chiesto aiuto, ecco le opzioni:"
  say "Digita 1 per spegnere il mac"
  say "2 per riavviarlo"
  say "3 forza il riavvio del faindèrr"
  say "4 forza lo spegnimento del mac"
  say "5 forza il riavvio del mac"
}

parla & read -n 1 -p "Opzione: " opz

case "$opz" in
1) # spengo  gentilmente
  say "Spengo il mac"
  osascript -e 'tell app "System Events" to shut down'
  ;;
2) # riavvio gentilmente
  say "Riavvio il mac"
  osascript -e 'tell app "System Events" to restart'
  ;;
3) # riavvio il finder
  say "Per riavviare il faindèrr, inserire la password di root"
  sudo killall -HUP WindowServer
  ;;
4) # forzo il riavvio
  say "Per forzare lo spegnimento, inserire la password di root"
  sudo shutdown -h now "Force Halt"
  ;;
5) # forzo il riavvio
  say "Per forzare il riavvio, inserire la password di root"
  sudo shutdown -r now "Force Reboot"
  ;;
*) # opzione non valida
  say "Opzione non valida" & echo "Opzione non valida"
	exit 1
	;;
esac
