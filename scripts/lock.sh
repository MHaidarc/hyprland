#/bin/sh

if [ -f "/usr/bin/swayidle" ]; then
  echo "swayidle está instalado"
  swayidle -w timeout 300 'swaylock -f' timeout 360 'hyprctl dispatch dpms off' resume 'hyprctl dispatch dpms on'
else
  echo "swayidle não está instalado"
fi;
