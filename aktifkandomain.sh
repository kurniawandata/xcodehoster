echo -n "Masukkan nama domain : "
read domain
sudo cp support/subdomain.conf /etc/apache2/sites-available/$domain.conf 
sed -i "s/sample.xcodehoster.com/$domain/g" /etc/apache2/sites-available/$domain.conf
a2ensite $domain.conf
service apache2 restart
