#!/bin/bash
#version 1.0
#Author:ThuanTiggaBellass

# Variables
b='\033[1m'
u='\033[4m'
bl='\E[30m'
r='\E[31m'
g='\E[32m'
bu='\E[34m'
m='\E[35m'
c='\E[36m'
w='\E[37m'
endc='\E[0m'
enda='\033[0m'
blue='\e[1;34m'
cyan='\e[1;36m'
red='\e[1;31m'

figlet Tools Termux | lolcat


echo  "================================================="
echo    "Team      : Black Hat Cyber $white         " |lolcat
echo    "Author    : ThuanTiggaBellass $white   " |lolcat
echo    "Github    : https://github.com/Mr-Thirteen-13 $white  " | lolcat
echo    "Facebook  : https://www.facebook.com/100045683043717 $white  " | lolcat
echo    "WhatsApp  : 08xxxxxxxxxxx $white              " |lolcat
echo "=================================================="

###################################################
# CTRL + C
###################################################
trap ctrl_c INT
ctrl_c() {
clear
echo -e $red"[#]> (Ctrl + C ) Detected, Trying To Exit ... "
echo -e $cyan"[#]> Thanks"
sleep 1
echo ""
echo -e $white"[#]> see you gaes :)..."
sleep 1
exit
}

lagi=1
while [ $lagi -lt 6 ];
do
echo ""
echo  $b "1.  Nmap${endc}";
echo  "============================" | lolcat
echo  $r "2.  Admin-finder${endc}";
echo  "============================" | lolcat
echo  $g "3.  RED_HAWK${endc}";
echo  "============================" | lolcat
echo  $c "4   Lazymux${endc}";
echo  "============================" | lolcat
echo  $r"5.  Tools-X${endc}";
echo  "============================" | lolcat
echo  $r "99. Exit${endc}";
echo ""
echo -e "╭─Tools-Termux" |lolcat
read -p "╰─ThuanTiggaBellass#" pil;

# Nmap

case $pil in
1) pkg install nmap
echo -e  "${y} {1} Masukkan Web${endc}:"
read web
nmap $web
echo

;;

# admin-finder

2) git clone  https://github.com/the-c0d3r/admin-finder.git
echo -e "${y} cara menggunakan admin finder"
echo -e "${y} cd admin-finder"
echo -e "${y} python admin-finder.py"
cd /data/data/com.termux/files/home/admin-finder/
python2 /data/data/com.termux/files/home/admin-finder/admin-finder.py
echo

;;

#RED_HAWK

3) git clone https://github.com/Tuhinshubhra/RED_HAWK
echo -e "${y} Installer RED_HAWK..."
echo -e "${y} cd RED_HAWK"
echo -e "${y} php RED_HAWK.php"
cd /data/data/com.termux/files/home/RED_HAWK/
php /data/data/com.termux/files/home/RED_HAWK/ RED_HAWK.php

;;

#Lazymux

4) git clone https://github.com/Gameye98/Lazymux
echo -e "${y} Installer Lazymux..."
echo -e "${y} cd Lazymux"
echo -e "${y} python lazymux.py"
cd /data/data/com.termux/files/home/Lazymux/
python2 /data/data/com.termux/files/home/Lazymux/ lazymux.py

;;

#Tools-X

5) git clone https://github.com/Rajkumrdusad/Tool-X
echo -e "${y} Installer Tool-X..."
echo -e "${y} cd Tool-X"
echo -e "${y} sh install.aex"
cd /data/data/com.termux/files/home/Tool-X
bash /data/data/com.termux/files/home/Tool-X/sh install.aex

;;


6) echo "created by : ThuanTiggaBellass" | lolcat
exit
;;

*) echo "sorry, pilihan yang anda cari tidak ada"
esac
done
done
