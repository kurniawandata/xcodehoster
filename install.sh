sudo apt-get update
sudo apt -y install software-properties-common
sudo add-apt-repository ppa:ondrej/php 
sudo apt-get update
sudo apt -y install php8.2 libapache2-mod-php8.2
sudo cp support/phpinfo.php /var/www/html
sudo apt install mysql-server
echo -n "Masukkan password root yang akan dibuat : "
read passmysql
sudo mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '$passmysql';" 
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
sudo touch /home/datauser/locked
sudo mkdir /home/xcodehoster
sudo touch /home/datauser/locked
sudo mkdir /home/datapengguna
sudo touch /home/datapengguna/locked
sudo mkdir /home/checkdata
sudo touch /home/chekdata/locked
sudo mkdir /home/checkdata2
sudo touch /home/checkdata2/locked
sudo chmod 777 /home/datauser
sudo cp -r filemanager /home/filemanager
sudo a2enmod cgi
sudo chmod 777 /usr/lib/cgi-bin
sudo chmod 777 /usr/lib/cgi-bin/*
sudo chmod 777 /home
sudo chmod 777 /etc/apache2/sites-available
sudo sed -i "/more/i\www-data ALL=(ALL) NOPASSWD: ALL" /etc/sudoers
sudo a2enmod ssl
sudo mkdir /etc/apache2/ssl
sudo chmod 777 /etc/apache2/ssl
sudo apt install qd
sudo apt install imagick
echo -n "Masukkan nama domain : "
read domain
echo -n "Masukkan password root MySQL : "
read passwordmysql
passwordmysql="-p$passwordmysql"
sed -i "s/-ppasswordmysql/$passwordmysql/g" support/runbaru.sh
sed -i "s/xcodehoster.com/$domain/g" support/formdata.sh
sed -i "s/xcodehoster.com/$domain/g" support/run.sh
sed -i "s/xcodehoster.com/$domain/g" support/aktivasi3.sh
sed -i "s/xcodehoster.com/$domain/g" support/subdomain.conf
sed -i "s/$domain.pem/xcodehoster.com.pem/g" support/subdomain.conf
sed -i "s/$domain.key/xcodehoster.com.key/g" support/subdomain.conf
sed -i "s/-ppasswordmysql/$passwordmysql/g" runbaru.sh 
sudo cp support/index.sh /usr/lib/cgi-bin
sudo cp support/run.sh /usr/lib/cgi-bin
sudo cp support/aktivasi3.sh /usr/lib/cgi-bin
sudo cp support/subdomain.conf /home/xcodehoster
sudo service apache2 restart
echo "Instalasi xcodehoster tahap awal selesai, silahkan modifikasi isi dan cloudflare"