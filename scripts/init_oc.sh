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
echo -e "\e[92m# Run \e[1mlrctl\e[25m and install OCPIPELINE and LRJQ\e[39m"

cd
./lrctl status
./lrctl lrjq install
./lrctl ocpipeline install
./lrctl oc status

for i in {22,28,34,40} ; do echo -en "\e[38;5;${i}m#\e[0m" ; done
echo -e "\e[92m# Install, configure and start \e[1mFile Beat\e[25m\e[39m"

cd /tmp
curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.10.2-x86_64.rpm
sudo -E rpm -vi filebeat-7.10.2-x86_64.rpm
rm /tmp/filebeat-7.10.2-x86_64.rpm
cd

sudo -E cp --force /etc/filebeat/filebeat.yml /etc/filebeat/filebeat.yml.bck
sudo -E curl -sL https://raw.githubusercontent.com/TonyMasse/RKOM21-OC_Workshop/main/config/filebeat.yml -o /etc/filebeat/filebeat.yml
sudo -E service filebeat start

for i in {22,28,34,40} ; do echo -en "\e[38;5;${i}m#\e[0m" ; done
echo -e "\e[92m# Download log samples and setup dripping\e[39m"

sudo -E mkdir /var/log/rkom21-lab
sudo -E chmod 777 /var/log/rkom21-lab
curl -sL https://github.com/TonyMasse/RKOM21-OC_Workshop/raw/main/sample/misnet.sample.gz | gunzip - > /var/log/rkom21-lab/misnet.sample
curl -sL https://github.com/TonyMasse/RKOM21-OC_Workshop/raw/main/scripts/misnet.sample.drip.pl | perl -  >> /var/log/rkom21-lab/log-sample.log &

