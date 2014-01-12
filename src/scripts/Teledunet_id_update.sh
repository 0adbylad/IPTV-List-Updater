##!/bin/sh
#Get time_player

curl -c "teledunet.cks" "http://www.teledunet.com" > /dev/null 2>&1
id0=`curl -b "teledunet.cks" -e "http://www.teledunet.com" "http://www.teledunet.com/tv_/?teledunet&no_pub" 2>/dev/null | sed -n '/^time_player/{s/^time_player=\([0-9.+E]\+\);.*$/\1/p;q}'`
id0=`printf "%13.0f" $id0`
echo $id0

#now let`s update the id0 in the channellist

sed -i 's/id0=[0-9]\{14\}/id0='$id0/g /etc/enigma2/userbouquet.teledunet.tv

#now reload servicelist
wget -q -O - http://127.0.0.1/web/servicelistreload?mode=2 > /dev/null 2>&1
echo "id0 updated "

exit 0 
