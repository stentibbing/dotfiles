#!/bin/bash

nmcli -t d wifi rescan

LIST=$(nmcli --fields SSID,SECURITY,SIGNAL device wifi list | sed '/^--/d' | sed 1d | sed -E "s/WPA*.?\S/~~/g" | sed "s/~~ ~~/~~/g;s/802\.1X//g;s/--/~~/g;s/  *~/~/g;s/~  */~/g;s/_/ /g" | column -t -s '~')

echo $LIST
