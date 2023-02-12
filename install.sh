#!/bin/bash
#Progammer : Kurniawan. admin@xcodetraining.com. xcode.or.id.
#Program ini dapat digunakan untuk personal ataupun komersial.
#X-code Media - xcode.or.id / xcode.co.id
sudo apt-get update
sudo apt -y install software-properties-common
sudo add-apt-repository ppa:ondrej/php 
sudo apt-get update
sudo apt -y install php8.2 libapache2-mod-php8.2
sudo cp support/phpinfo.php /var/www/html
sudo apt install mysql-server
echo -n "Masukkan password root yang akan dibuat : "
read passwordmysql
sudo mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '$passwordmysql';" 
sudo apt install phpmyadmin
sudo apt-get install zip unzip php-zip
sudo a2enmod ssl
service apache2 restart
sudo cp /etc/apache2/apache2.conf backup
sudo cp support/apache2.conf /etc/apache2/
echo -n "Masukkan nama domain : "
read domain
sed -i "s/xcodehoster.com/$domain/g" support/subdomain.conf
sudo cp /etc/php/8.2/apache2/php.ini /etc/php/8.2/apache2/phpini.backup
sudo cp support/php.ini /etc/php/8.2/apache2
sudo mkdir /home/root
sudo touch /home/root/locked
sudo mkdir /home/pma
sudo touch /home/pma/locked
sudo mkdir /home/www
sudo touch /home/www/locked
sudo mkdir /home/datauser
sudo touch /home/datauser/sed -i "s/$domain.pem/xcodehoster.com.pem/g" support/subdomain.conf
sed -i "s/$domain.key/xcodehoster.com.key/g" support/subdomain.conflocked
sudo mkdir /home/xcodehoster
sudo touch /home/datauser/locked
sudo mkdir /home/datapengguna
sudo touch /home/datapengguna/locked
sudo mkdir /home/checkdata
sudo touch /home/checkdata/locked
sudo mkdir /home/checkdata2
sudo touch /home/checkdata2/locked
sudo chmod 777 /home/datauser
sudo cp -r filemanager /home/filemanager
chmod -R 777 /home
sudo a2enmod cgi
sudo chmod 777 /usr/lib/cgi-bin
sudo chmod 777 /usr/lib/cgi-bin/*
sudo chmod 777 /home
sudo chmod 777 /etc/apache2/sites-available
sudo sed -i "/more/i\www-data ALL=(ALL) NOPASSWD: ALL" /etc/sudoers
sudo a2enmod ssl
sudo mkdir /etc/apache2/ssl
sudo chmod 777 /etc/apache2/ssl
sudo apt install jq
sudo sudo apt install imagemagick
passwordmysql="-p$passwordmysql"
sed -i "s/-ppasswordmysql/$passwordmysql/g" support/run.sh
sed -i "s/xcodehoster.com/$domain/g" support/formdata.sh
sed -i "s/xcodehoster.com/$domain/g" support/run.sh
sed -i "s/xcodehoster.com/$domain/g" support/aktivasi3.sh
sed -i "s/xcodehoster.com.pem/$domain.pem/g" support/subdomain.conf
sed -i "s/xcodehoster.com.key/$domain.pem/g" support/subdomain.conf
sed -i "s/-ppasswordmysql/$passwordmysql/g" support/run.sh 
sudo cp support/run.sh /usr/lib/cgi-bin
sudo cp support/aktivasi3.sh /usr/lib/cgi-bin
sudo cp support/formdata.sh /usr/lib/cgi-bin
sudo cp support/subdomain.conf /home/xcodehoster
sudo mkdir /etc/apache2/ssl
sudo touch /etc/apache2/ssl/$domain.conf.pem
sudo touch /etc/apache2/ssl/$domain.conf.key
sudo service apache2 restart
echo "Instalasi xcodehoster tahap awal selesai, silahkan modifikasi isi dan sebagainya, karena sistem hosting ini memanfaatkan API cloudflare."
