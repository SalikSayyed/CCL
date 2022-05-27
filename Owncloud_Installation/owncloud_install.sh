#!/bin/bash
sudo apt update -y && sudo apt upgrade -y
sudo add-apt-repository -y ppa:ondrej/php
sudo apt install apache2 libapache2-mod-php7.2 openssl php-imagick php7.2-common php7.2-curl php7.2-gd php7.2-imap php7.2-intl php7.2-json php7.2-ldap php7.2-mbstring php7.2-mysql php7.2-pgsql php-smbclient php-ssh2 php7.2-sqlite3 php7.2-xml php7.2-zip
sudo systemctl start apache2
sudo systemctl enable apache2
sudo apt install mariadb-server
sudo mysql_secure_installation

sudo mysql -u root -p

sudo wget https://download.owncloud.org/community/owncloud-10.4.0.zip
sudo unzip owncloud-10.4.0.zip -d /var/www/
sudo chown -R www-data:www-data /var/www/owncloud/
sudo chmod -R 755 /var/www/owncloud/
sudo gedit /etc/apache2/conf-available/owncloud.conf
sudo a2enconf owncloud
sudo a2enmod rewrite
sudo a2enmod headers
sudo a2enmod env
sudo a2enmod dir
sudo a2enmod mime
sudo systemctl restart apache2
