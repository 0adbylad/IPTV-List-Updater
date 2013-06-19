#!/bin/sh
# created by Nobody28 & satinfo
#
# www.gigablue-support.com
# www.opena.tv
cat /usr/lib/enigma2/python/Plugins/Extensions/IPTV-List-Updater/scripts/begin.txt
echo $LINE 
echo 'Updating Thai IPTV Bouquet'
echo $LINE
echo 'FIRST STEP UPDATE BOUQUETS AND SERVICES'
echo 'Updating Services'
echo 'Please Wait'
echo $LINE
cd /tmp

# thai  Convert
#rm /tmp/thai.* > /dev/null
#rm /tmp/userbouquet.thai.tv > /dev/null
wget http://01.gen.tr/simple/turkvod/thai.m3u -O /tmp/thai.m3u > /dev/null
if [ -f /tmp/thai.m3u ] ; 
	then
		sed "1,1d" /tmp/thai.m3u > /tmp/thai.0
		sed 'N;s/\(.*\)\n\(.*\)/\2\n\1/' /tmp/thai.0 > /tmp/thai.00
		sed '/#EXTINF:-1,/!s/:/%3a/g' /tmp/thai.00 > /tmp/thai.000
		echo '#NAME IPTV Thai by Nobody28 (TV)' > /tmp/thai.1
		echo '#SERVICE 1:64:0:0:0:0:0:0:0:0::Thai Kanaele' >> /tmp/thai.1
		echo '#DESCRIPTION --- Thai by Nobody28 ---' >> /tmp/thai.1
		cat /tmp/thai.000 >> /tmp/thai.1
		sed 's/#EXTINF:-1,/#DESCRIPTION: /g' /tmp/thai.1 > /tmp/thai.2
		sed 's/rtmp%3a/#SERVICE 4097:0:1:0:0:0:0:0:0:0:rtmp%3a/' /tmp/thai.2 > /tmp/thai.3
		sed 's/rtmpe%3a/#SERVICE 4097:0:1:0:0:0:0:0:0:0:rtmpe%3a/' /tmp/thai.3 > /tmp/thai.4
		sed 's/rtmpt%3a/#SERVICE 4097:0:1:0:0:0:0:0:0:0:rtmpt%3a/' /tmp/thai.4 > /tmp/thai.5
		sed 's/rtsp%3a/#SERVICE 4097:0:1:0:0:0:0:0:0:0:rtsp%3a/' /tmp/thai.5 > /tmp/thai.6
		sed 's/mms%3a/#SERVICE 4097:0:1:0:0:0:0:0:0:0:mms%3a/' /tmp/thai.6 > /tmp/thai.7
		sed 's/mmsh%3a/#SERVICE 4097:0:1:0:0:0:0:0:0:0:mmsh%3a/' /tmp/thai.7 > /tmp/thai.8
		sed '/#SERVICE 4097:0:1:0:0:0:0:0:0:0:rt/!s/http%3a/#SERVICE 4097:0:1:0:0:0:0:0:0:0:http%3a/' /tmp/thai.8 > /tmp/userbouquet.thai.tv
		cp /tmp/userbouquet.thai.tv /etc/enigma2/userbouquet.thai.tv > /dev/null
		rm /tmp/thai.* > /dev/null
		echo $LINE
		echo 'Download Complete'

		if grep -qs 'userbouquet.thai.tv' cat /etc/enigma2/bouquets.tv  ; then
			echo "Bouquet existiert bereits"
		else 
			echo '#SERVICE 1:7:1:0:0:0:0:0:0:0:FROM BOUQUET "userbouquet.thai.tv" ORDER BY bouquet' >> /etc/enigma2/bouquets.tv
		fi
		rm /tmp/userbouquet.thai.tv > /dev/null
		echo $LINE
		cat /usr/lib/enigma2/python/Plugins/Extensions/IPTV-List-Updater/scripts/end.txt
	else
		cat /usr/lib/enigma2/python/Plugins/Extensions/IPTV-List-Updater/scripts/download_error.txt
fi
