#!/usr/bin/env bash

# Install BitrixVM enviroment

# update
sudo yum -y update
# install wget
sudo yum -y install wget

# install BitrixVM env
wget http://repos.1c-bitrix.ru/yum/bitrix-env.sh
sudo chmod +x bitrix-env.sh
sudo ./bitrix-env.sh

# disable autorun menu
sudo sed -i 's/~\/menu.sh/#~\/menu.sh/g' /root/.bash_profile

# change httpd user and group
sudo sed -i 's/User bitrix/User vagrant/' /etc/httpd/conf/httpd.conf
sudo sed -i 's/Group bitrix/Group vagrant/' /etc/httpd/conf/httpd.conf
sudo service httpd restart
# create session dir
sudo mkdir /tmp/php_sessions
sudo mkdir /tmp/php_sessions/www
sudo mkdir /tmp/php_sessions/ext_www
sudo chown vagrant:vagrant /tmp/php_sessions -R
# create upload dir
sudo mkdir /tmp/php_upload
sudo mkdir /tmp/php_upload/www
sudo mkdir /tmp/php_upload/ext_www
sudo chown vagrant:vagrant /tmp/php_upload -R

# enable phar
sudo cp /etc/php.d/20-phar.ini.disabled /etc/php.d/20-phar.ini
sudo service httpd restart
