#!/usr/bin/env bash

for i in {16..21} {21..16} ; do echo -en "\e[38;5;${i}m######\e[0m" ; done ; echo
echo " "
echo -e "\e[94m          ██████  ██   ██  ██████  ███    ███     ██████   ██ "
echo -e "\e[94m          ██   ██ ██  ██  ██    ██ ████  ████          ██ ███ "
echo -e "\e[94m          ██████  █████   ██    ██ ██ ████ ██      █████   ██ "
echo -e "\e[94m          ██   ██ ██  ██  ██    ██ ██  ██  ██     ██       ██ "
echo -e "\e[94m          ██   ██ ██   ██  ██████  ██      ██     ███████  ██ "
echo " "
for i in {16..21} {21..16} ; do echo -en "\e[38;5;${i}m######\e[0m" ; done ; echo
echo -e "\e[94m# Init script"
echo -e "\e[94m# init.sh"
echo -e "\e[94m# -----------"
echo -e "\e[94m# (c) 2021 LogRhythm"
echo -e "\e[94m# Tony Massé - tony.masse@logrhythm.com"
for i in {16..21} {21..16} ; do echo -en "\e[38;5;${i}m######\e[0m" ; done ; echo
echo -e "\e[92mPrepare and save the Firewall rules"

sudo -E iptables -I INPUT -p tcp --dport 9001 -j ACCEPT
sudo -E bash -c 'iptables-save > /etc/sysconfig/iptables'

for i in {16..21} {21..16} ; do echo -en "\e[38;5;${i}m######\e[0m" ; done ; echo
echo -e "\e[92mInstall \e[1mNodeJS"

curl -sL https://rpm.nodesource.com/setup_14.x | sudo -E bash -
sudo -E yum install -y nodejs wget

echo -e "\e[92mClone Github of \e[1metherpad"

git clone --branch master https://github.com/ether/etherpad-lite.git
cd etherpad-lite

echo -e "\e[92mGet prepared configuration"

curl -sL https://raw.githubusercontent.com/TonyMasse/RKOM21-OC_Workshop/main/config/settings.json -o settings.json

echo -e "\e[92mInstall cryptographic and authentation modules for \e[1metherpad"
npm install ep_hash_auth bcrypt argon2
npm install adminpads2 author_hover message_all pad_activity_nofication_in_title padlist2 show_whitespace
sudo iptables -L -n | grep 9001
echo -e "\e[92mRun \e[1metherpad"
export NODE_ENV=production
bin/run.sh &
sleep 5


for i in {16..21} {21..16} ; do echo -en "\e[38;5;${i}m######\e[0m" ; done ; echo
echo -e "\e[92mInstall \e[1mwget"

cd
sudo -E yum install -y wget

echo -e "\e[92mGet LogRhythm \e[1mlrctl"

wget https://raw.githubusercontent.com/logrhythm/versions/master/lrctl

echo -e "\e[92mRun \e[1mlrctl"

chmod +x lrctl
sudo -E ./lrctl init
sudo -E ./lrctl lrjq install
sudo -E ./lrctl ocpipeline install
sudo -E ./lrctl metrics start
sudo -E ./lrctl status
sudo -E ./lrctl open-collector start


for i in {16..21} {21..16} ; do echo -en "\e[38;5;${i}m######\e[0m" ; done ; echo
