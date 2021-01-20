#!/usr/bin/env bash

for i in {16..21} {21..16} ; do echo -en "\e[38;5;${i}m######\e[0m" ; done ; echo
echo " "
echo -e "\e[94m          ██████  ██   ██  ██████  ███    ███     ██████   ██ \e[39m"
echo -e "\e[94m          ██   ██ ██  ██  ██    ██ ████  ████          ██ ███ \e[39m"
echo -e "\e[94m          ██████  █████   ██    ██ ██ ████ ██      █████   ██ \e[39m"
echo -e "\e[94m          ██   ██ ██  ██  ██    ██ ██  ██  ██     ██       ██ \e[39m"
echo -e "\e[94m          ██   ██ ██   ██  ██████  ██      ██     ███████  ██ \e[39m"
echo " "
for i in {16..21} {21..16} ; do echo -en "\e[38;5;${i}m######\e[0m" ; done ; echo
echo -e "\e[94m# Init script"
echo -e "\e[94m# init.sh"
echo -e "\e[94m# -----------"
echo -e "\e[94m# (c) 2021 LogRhythm"
echo -e "\e[94m# Tony Massé - tony.masse@logrhythm.com\e[39m"
for i in {16..21} {21..16} ; do echo -en "\e[38;5;${i}m------\e[0m" ; done ; echo
for i in {22,28,34,40} ; do echo -en "\e[38;5;${i}m#\e[0m" ; done
echo -e "\e[92m# Prepare and save the Firewall rules\e[39m"

sudo -E iptables -I INPUT -p tcp --dport 9001 -j ACCEPT
sudo -E bash -c 'iptables-save > /etc/sysconfig/iptables'

for i in {16..21} {21..16} ; do echo -en "\e[38;5;${i}m------\e[0m" ; done ; echo
for i in {22,28,34,40} ; do echo -en "\e[38;5;${i}m#\e[0m" ; done
echo -e "\e[92m# Install \e[1mNodeJS \e[39m\e[25m"

curl -sL https://rpm.nodesource.com/setup_14.x | sudo -E bash -
sudo -E yum install -y nodejs wget

for i in {22,28,34,40} ; do echo -en "\e[38;5;${i}m#\e[0m" ; done
echo -e "\e[92m# Clone Github of \e[1metherpad\e[39m\e[25m"

git clone --branch master https://github.com/ether/etherpad-lite.git
cd etherpad-lite

for i in {22,28,34,40} ; do echo -en "\e[38;5;${i}m#\e[0m" ; done
echo -e "\e[92m# Get prepared configuration\e[39m"

curl -sL https://raw.githubusercontent.com/TonyMasse/RKOM21-OC_Workshop/main/config/settings.json -o settings.json
curl -sL https://raw.githubusercontent.com/TonyMasse/RKOM21-OC_Workshop/main/config/dirty.db.gz | gunzip - > var/dirty.db

for i in {22,28,34,40} ; do echo -en "\e[38;5;${i}m#\e[0m" ; done
echo -e "\e[92m# Install cryptographic and authentation modules for \e[1metherpad\e[39m\e[25m"

npm install ep_hash_auth ep_bcrypt ep_argon2
npm install ep_adminpads2 ep_author_hover ep_message_all
sudo iptables -L -n | grep 9001

for i in {16..21} {21..16} ; do echo -en "\e[38;5;${i}m------\e[0m" ; done ; echo
for i in {22,28,34,40} ; do echo -en "\e[38;5;${i}m#\e[0m" ; done
echo -e "\e[92m# Preparing \e[1mOpen Collector\e[39m\e[25m"

curl -sL https://github.com/TonyMasse/RKOM21-OC_Workshop/raw/main/scripts/init_oc.sh -o /tmp/init_oc.sh
sudo -E -u logrhythm bash /tmp/init_oc.sh

for i in {22,28,34,40} ; do echo -en "\e[38;5;${i}m#\e[0m" ; done
echo -e "\e[92m# Run \e[1metherpad\e[39m\e[25m"

export NODE_ENV=production
for i in {16..21} {21..16} ; do echo -en "\e[38;5;${i}m------\e[0m" ; done ; echo
nohup bin/run.sh &
tail -f nohup.out &
