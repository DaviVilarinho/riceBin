#!/bin/bash
hour=$(date +%H)

if [ $hour -gt 8 ] && [ $hour -lt 18 ] ; then
# sed -i 's/gtk-application-prefer-dark-theme=1/gtk-application-prefer-dark-theme=0/g' /home/dv/.config/gtk-3.0/settings.ini
# sed -i 's/gtk-theme-name=Sweet-Dark-v40/gtk-theme-name=victory-gtk-theme-21-07/g' /home/dv/.config/gtk-3.0/settings.ini
# sed -i 's/gtk-icon-theme-name=candy-icons/gtk-icon-theme-name=victory-icon-theme-master/g' /home/dv/.config/gtk-3.0/settings.ini
  echo "a"

else 
# sed -i 's/gtk-application-prefer-dark-theme=0/gtk-application-prefer-dark-theme=1/g' /home/dv/.config/gtk-3.0/settings.ini
# sed -i 's/gtk-theme-name=victory-gtk-theme-21-07/gtk-theme-name=Sweet-Dark-v40/g' /home/dv/.config/gtk-3.0/settings.ini
# sed -i 's/gtk-icon-theme-name=victory-icon-theme-master/gtk-icon-theme-name=candy-icons/g' /home/dv/.config/gtk-3.0/settings.ini
  killall redshift ; sleep 5; redshift -l -18:-48 -t 5700:3100 -b 1:1 
fi
