#Coded By AchonkJust - Extreme Crew
#issued 10-mei-2018
#!/bin/bash
putih='\033[0m'
ijo='\e[38;5;82m'
merah='\e[38;5;196m'
dir="Achonkjust"
if [ ! -d Achonkjust/google.com ]; then
	mkdir $dir
fi

 google(){
 	echo -n "Input Your Dork : "
 	read dork
 	lynx --dump "https://google.com/search?q=$dork" --dump | grep -Po "(?<=\/url\?q=).*?(?=\&)" >> Achonkjust/resultgoogle.txt
lynx --dump "https://google.com/search?q=$dork" | grep "search?q=" | tail | gawk -F/ '{ print $4 }' >> Achonkjust/page.txt
for ngambil in $(cat Achonkjust/page.txt); do
	lynx --dump https://www.google.com/$ngambil | grep -Po "(?<=\/url\?q=).*?(?=\&)" >> Achonkjust/resultgoogle.txt
	done
	cat ${dir}/resultgoogle.txt
	printf "${ijo} saved to Achonkjust/resultgoogle.txt ${putih}\n"
	rm -f Achonkjust/page.txt
}
bing(){
	lynx --dump "https://www.bing.com/search?q=Achon666ju5t" | grep -v "bing" | grep -v "javascript" | tail -20 >> ${dir}/resultbing.txt
	lynx --dump "https://www.bing.com/search?q=Achon666ju5t" | grep "search?q=" | grep "first" | gawk -F/ '{print $4}' >> ${dir}/page.txt
	for more in $(cat Achonkjust/page.txt); do 
	lynx --dump "https://www.bing.com/$more" grep -v "bing" | grep -v "javascript" | tail -20 >> ${dir}/resultbing.txt
done
	cat ${dir}/resultbing.txt
	printf "${ijo} Resul Saved to ${dir}/resultbing.txt ${putih}\n"
	rm -f ${dir}/page.txt
}
 header(){
printf "${ijo}"
printf "     ___        __                _____ _____ _____   _       ________    \n"
printf "    /   | _____/ /_  ____  ____  / ___// ___// ___/  (_)_  __/ ____/ /_   \n"
printf "   / /| |/ ___/ __ \/ __ \/ __ \/ __ \/ __ \/ __ \  / / / / /___ \/ __/   \n"
printf "  / ___ / /__/ / / / /_/ / / / / /_/ / /_/ / /_/ / / / /_/ /___/ / /_     \n"
printf " /_/  |_\___/_/ /_/\____/_/ /_/\____/\____/\____/_/ /\__,_/_____/\__/     \n"
printf "===============Multi Dorker====================/___/ By Extreme.Crew 	  \n"
}
clear
header
printf "$GREEN"
echo "1.Google.com"
echo "2.Bing.com"
printf "$NC"
echo -n "Select Search Enggine [1/2]: "
read colok
	if [ $colok -eq 1 ]; then
		google
elif [ $colok -eq 2 ]; then
	bing
else
	echo "1 atau dua pilih aku atau dia yang engkau suka"
fi
