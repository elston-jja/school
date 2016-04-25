#!/bin/bash
result=$(nmcli -t -f type,state,connection d | egrep "^(tun|tap):connected" | awk -F':' '{ print $2 }')
[[ -z $result ]] && echo '👻: not connected' || echo  "👻: $result"
