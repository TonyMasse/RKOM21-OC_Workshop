#!/usr/bin/env bash

sudo -E iptables -I INPUT -p tcp --dport 9001 -j ACCEPT
curl -sL https://rpm.nodesource.com/setup_14.x | sudo -E bash -
sudo -E yum install -y nodejs wget
git clone --branch master https://github.com/ether/etherpad-lite.git
cd etherpad-lite
wget https://raw.githubusercontent.com/TonyMasse/RKOM21-OC_Workshop/main/config/settings.json
npm install ep_hash_auth bcrypt argon2
npm install adminpads2 author_hover message_all pad_activity_nofication_in_title padlist2 show_whitespace
bin/run.sh