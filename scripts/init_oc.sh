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
echo -e "\e[94m# Init OC script"
echo -e "\e[94m# init_oc.sh"
echo -e "\e[94m# -----------"
echo -e "\e[94m# (c) 2021 LogRhythm"
echo -e "\e[94m# Tony Massé - tony.masse@logrhythm.com\e[39m"
for i in {16..21} {21..16} ; do echo -en "\e[38;5;${i}m------\e[0m" ; done ; echo
for i in {22,28,34,40} ; do echo -en "\e[38;5;${i}m#\e[0m" ; done

echo -e "\e[92mRun \e[1mlrctl\e[39m\e[25m"

./lrctl status
./lrctl lrjq install
./lrctl ocpipeline install
./lrctl oc status

cd /tmp
curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.10.2-x86_64.rpm
sudo -E rpm -vi filebeat-7.10.2-x86_64.rpm
rm /tmp/filebeat-7.10.2-x86_64.rpm
cd

sudo -E mkdir /var/log/rkom21-lab
sudo -E chmod 777 /var/log/rkom21-lab

sudo -E cp /etc/filebeat/filebeat.yml /etc/filebeat/filebeat.yml.1
# EDIT /etc/filebeat/filebeat.yml
#sudo -E curl -sL https://raw.githubusercontent.com/TonyMasse/RKOM21-OC_Workshop/main/config/filebeat.yml -o /etc/filebeat/filebeat.yml
sudo -E service filebeat start
