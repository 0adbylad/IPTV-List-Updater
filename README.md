IPTV-List-Updater
==================

FUNKTIONEN:
- Download & Convert m3u Files from Servers &amp; Install/Update IPTV Bouquets 
- Download & Install/Update Bouquetfiles
- Update id0 for Teledunet
- Start Udpxy für T-Home Entertain

Hier gibts ein Video zu sehen ==> http://m.youtube.com/watch?v=tc7zs4wRFYg&desktop_uri=%2Fwatch%3Fv%3Dtc7zs4wRFYg
(Leider eine ältere Version, aber die Grundfunktion sieht man dort sehr gut :) )

WO FINDE ICH DIE INSTALLATIONSFILES?
Hier ==> https://github.com/Nobody28/IPTV-List-Updater/tree/master/IPKs
oder bei allen Teams der OE-Alliance auf dem Downloadfeed (Grüne Taste - Grüne Taste - Extensions)

WIE KANN ICH DAS PLUGIN MANUELL INSTALLIEREN?
Die Files von hier ==> https://github.com/Nobody28/IPTV-List-Updater/tree/master/IPKs/mips32el (oder von hier ==> https://github.com/Nobody28/IPTV-List-Updater/tree/master/IPKs/mips32el-nf) per FTP nach /tmp kopieren.
Dann per Telnet folgende Befehle auf der Box absetzen:
    cd /tmp
    opkg update
    opkg install *.ipk
Normalerweise sollte dann das Plugin nach einem Boxneustart unter den Erweiterungen zu sehen sein!


FREIE STREAMQUELLEN (ohne Anmeldung!):

- http://database.freetuxtv.net/
- http://www.tvonlinestreams.com/


FRAGEN / ANTWORTEN:

Wie kann ich Bouquets wieder löschen?

Einzelne Bouquets könnte Ihr ja nach dem Aufruf des Plugins wieder löschen:
Pfeil runter ==> Favoriten (blaue Taste) ==> auf das zu Löschende Bouquet gehen. ==> Menü ==> Eintrag entfernen.
Beim nächsten Aufruf des Plugins werden die Bouquets aber wieder angelegt!


Warum keine LIG TV?

Erstens LIG TV Mitarbeiter und Roboter verfolgen jedes LIG TV schreiben auf Internet und bekommst du ärger mit denen und plötzlich ein anzeige da.
Zweitens . Jeder LIG TV link die du im Internet findest verschwindet innert kurze Zeit. 


Wie kann ich Streams selber finden?

- Den URLHELPER downloaden ==> http://www.streamingstar.com/download/urlhelper.exe
- installieren und starten
- jetzt auf die Webseite wechseln, wo Ihr den Kanal sehen wollt, dort seht Ihr Streamlinks in der Medialiste
- den Link kopieren und auf dieser Seite einfügen ==> http://plst.agilityhoster.com/en/rtmp.html
und process klicken.

Jetzt habt ihr Eure Datei (Links) für den Simple TV Player!
Leider werden diese Streams nicht alle funktionieren :(

So, und nun wisst Ihr, wie man Streams fischen kann :)
