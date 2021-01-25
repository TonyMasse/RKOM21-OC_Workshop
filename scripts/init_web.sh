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
echo -e "\e[94m# Init Web script"
echo -e "\e[94m# init_web.sh"
echo -e "\e[94m# -----------"
echo -e "\e[94m# (c) 2021 LogRhythm"
echo -e "\e[94m# Tony Massé - tony.masse@logrhythm.com\e[39m"
for i in {16..21} {21..16} ; do echo -en "\e[38;5;${i}m------\e[0m" ; done ; echo
for i in {22,28,34,40} ; do echo -en "\e[38;5;${i}m#\e[0m" ; done
echo -e "\e[92m# Update packages and add Yum Repo\e[39m"

sudo -E yum -y install epel-release
sudo -E yum -y install https://rpms.remirepo.net/enterprise/remi-release-7.rpm
sudo -E yum -y install yum-utils
sudo -E yum -y clean all
sudo -E yum -y update

for i in {16..21} {21..16} ; do echo -en "\e[38;5;${i}m------\e[0m" ; done ; echo
for i in {22,28,34,40} ; do echo -en "\e[38;5;${i}m#\e[0m" ; done
echo -e "\e[92m# Install NGINX and other required tools\e[39m"

sudo -E yum -y install wget unzip zip httpd certbot python2-certbot-nginx ruby nginx

for i in {16..21} {21..16} ; do echo -en "\e[38;5;${i}m------\e[0m" ; done ; echo
for i in {22,28,34,40} ; do echo -en "\e[38;5;${i}m#\e[0m" ; done
echo -e "\e[92m# Get NGINX configuration\e[39m"

sudo -E curl -sL https://raw.githubusercontent.com/TonyMasse/RKOM21-OC_Workshop/main/config/nginx_etherpad.conf -o /etc/nginx/default.d/nginx_etherpad.conf

sudo -E curl -sL https://raw.githubusercontent.com/TonyMasse/RKOM21-OC_Workshop/main/config/nginx_auth.conf -o /etc/nginx/default.d/nginx_auth.conf
sudo -E 
sudo -E bash -c 'echo "cmtvbTIxOiRhcHIxJDlnS3hkd05WJEliTFhOZkxqdTU5TzlweFBjRWsxczAK" | base64 -d > /usr/share/nginx/.htpasswd'

for i in {16..21} {21..16} ; do echo -en "\e[38;5;${i}m------\e[0m" ; done ; echo
for i in {22,28,34,40} ; do echo -en "\e[38;5;${i}m#\e[0m" ; done
echo -e "\e[92m# Get Website\e[39m"

sudo -E mv /usr/share/nginx/html /usr/share/nginx/html.ORIGINAL
sudo -E mkdir /usr/share/nginx/html
sudo -E chown centos /usr/share/nginx/html
curl -sL https://github.com/TonyMasse/RKOM21-OC_Workshop/raw/main/web/rkom21/dist/spa.zip -o /tmp/spa.zip
unzip /tmp/spa.zip -d /tmp/
rm -rf /usr/share/nginx/html/*
mv /tmp/spa/* /usr/share/nginx/html/
ln -s /usr/share/nginx/html html

for i in {16..21} {21..16} ; do echo -en "\e[38;5;${i}m------\e[0m" ; done ; echo
for i in {22,28,34,40} ; do echo -en "\e[38;5;${i}m#\e[0m" ; done
echo -e "\e[92m# Enable and Start \e[1mNginX \e[39m\e[25m"

sudo -E systemctl enable --now nginx
sudo -E systemctl status nginx -l

for i in {16..21} {21..16} ; do echo -en "\e[38;5;${i}m------\e[0m" ; done ; echo
for i in {22,28,34,40} ; do echo -en "\e[38;5;${i}m#\e[0m" ; done
echo -e "\e[92m# Setup SELinux to allow internal connections begtween NGINX and Etherpad\e[39m"
sudo -E setsebool -P httpd_can_network_connect 1
sudo -E setsebool -P httpd_can_network_relay 1

for i in {22,28,34,40} ; do echo -en "\e[38;5;${i}m#\e[0m" ; done
echo -e "\e[92m# Prepare and save the Firewall rules\e[39m"

sudo -E iptables -I INPUT -p tcp --dport 80 -j ACCEPT
sudo -E bash -c 'iptables-save > /etc/sysconfig/iptables'
