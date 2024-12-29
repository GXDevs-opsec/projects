#!/usr/bin/env bash


#Tool made in bash
#that automates some bugs
#from discord.
#Ubuntu/Debian/Arch/Kali.

touch update.log
touch file.log
touch proid.txt
Wayland_fix='WaylandEnable=False'
OS_RELEASE=/etc/os-release
[ -x "$(command -v discord)" ] || echo "discord is not installed." exit 1
sudo apt update >>update.log

until [[ $i == 4 ]]
do
   clear
 echo      "discord tool."
 echo "========================"
 echo " 1./ audio problem. "
 echo " 2./ share screen problem."
 echo " 3./ lag problem."
 echo " 4./ exit. "
 echo "========================"
 echo -n "choose:"
 read i

 grep -q "Ubuntu" $OS_RELEASE &&  [ "$i" -eq 1 ] && pgrep discord >>proid.txt && read -r kill line <"proid.txt" && sudo apt install pulsemixer >>file.log && discord && pulsemixer
 grep -q "Arch" $OS_RELEASE && [ "$i" -eq 1 ] && pgrep discord >>proid.txt && read -r kill line <"proid.txt" && sudo pacman -Syu pulsemixer >>file.log  && discord && pulsemixer
 grep -q "Kali" $OS_RELEASE &&  [ "$i" -eq 1 ] && pgrep discord >>proid.txt && read -r kill line <"proid.txt" && sudo apt install pulsemixer >>file.log && discord && pulsemixer
 grep -q "Debian" $OS_RELEASE &&  [ "$i" -eq 1 ] && pgrep discord >>proid.txt && read -r kill line <"proid.txt" && sudo apt install pulsemixer >>file.log && discord && pulsemixer
#audio fixer^^
grep -q "Ubuntu" $OS_RELEASE && [ "$i" -eq 2 ] && sed -i "s/#WaylandEnable=False.*/ ${Wayland_fix}/" /etc/gdm3/custom.conf && sudo reboot
grep -q "Arch" $OS_RELEASE && [ "$i" -eq 2 ] && sed -i "s/#WaylandEnable=False.*/ ${Wayland_fix}/" /etc/gdm3/custom.conf &&  --reboot
grep -q "Kali" $OS_RELEASE && [ "$i" -eq 2 ] && sed -i "s/#WaylandEnable=False.*/ ${Wayland_fix}/" /etc/gdm3/custom.conf && sudo reboot
grep -q "Debian" $OS_RELEASE && [ "$i" -eq 2 ] && sed -i "s/#WaylandEnable=False.*/ ${Wayland_fix}/" /etc/gdm3/custom.conf && shutdown -r
#black share screen fixer^^
 [ "$i" -eq 3 ] && pgrep discord >>proid.txt && read -r kill line <"proid.txt" && discord --enable-gpu-rasterization 
#lagg fixer^^
 [ "$i" -gt 4 || "$i"  -lt 1 ] && echo "invalid number."
   clear
done



