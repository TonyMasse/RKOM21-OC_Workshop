#!/usr/bin/env bash

sudo -E iptables -I INPUT -p tcp --dport 9001 -j ACCEPT
sudo -E bash -c 'iptables-save > /etc/sysconfig/iptables'
curl -sL https://rpm.nodesource.com/setup_14.x | sudo -E bash -
sudo -E yum install -y nodejs wget
git clone --branch master https://github.com/ether/etherpad-lite.git
cd etherpad-lite
curl -sL https://raw.githubusercontent.com/TonyMasse/RKOM21-OC_Workshop/main/config/settings.json -o settings.json
npm install ep_hash_auth bcrypt argon2
npm install adminpads2 author_hover message_all pad_activity_nofication_in_title padlist2 show_whitespace
sudo iptables -L -n | grep 9001
export NODE_ENV=production
bin/run.sh &
sleep 5
cd
wget https://raw.githubusercontent.com/logrhythm/versions/master/lrctl
chmod +x lrctl
./lrctl init
./lrctl metrics start
./lrctl open-collector start
