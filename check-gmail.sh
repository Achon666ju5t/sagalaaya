#!/bin/bash
#created by Achon666ju5t - Demeter16
#Gmail account bulk check
ceke=$(expect -v >/dev/null 2>&1)
if [[ "$ceke" ]]; then
	echo "OK"
else
	echo "expect not installed, please install"
	echo "find on google : https://google.com/search?q=install+expect+on+$( cat /etc/os-release | head -1 | gawk -F\" '{ print $2 }')"
	exit
fi
for mail in $(cat $1); do 
	oks="RCPT TO: <$mail>"
cat <<__EOF > verify
#!/bin/expect
# Created by Achon666ju5t - demeter16


set VMAFR "MAIL FROM: <achonk@achonk-just.com>"
set VMATO "$oks"

	spawn nc gmail-smtp-in.l.google.com 25
			expect "ESMTP"
			send "HELO mydomain.com\r"
			expect "service"
			send "\$VMAFR\r"
			expect "OK"
			send "\$VMATO\r"
			expect "OK"
			send "quit\r"

__EOF
cek=$(expect verify)
if [[ "$cek" =~ "The email account that you tried to reach does not exist" ]]; then
	echo "$mail die"
else
	echo "$mail live"
fi
done
