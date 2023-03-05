#!/bin/bash
#Progammer : Kurniawan. admin@xcodetraining.com. xcode.or.id.
#Program ini dapat digunakan untuk personal ataupun komersial.
#X-code Media - xcode.or.id / xcode.co.id
echo -n "Masukkan nama domain : "
read domain
sed -i "s/xcodehoster.com/$domain/g" customdomain/tahap1.sh
sed -i "s/xcodehoster.com/$domain/g" customdomain/tahap2.sh
sed -i "s/xcodehoster.com/$domain/g" customdomain/runtahap1.sh
sed -i "s/xcodehoster.com/$domain/g" customdomain/runtahap2.sh
sudo nano customdomain/aktivasi5.sh
sudo nano customdomain/aktivasi7.sh
sudo cp customdomain/tahap1.sh /usr/lib/cgi-bin
sudo cp customdomain/runtahap1.sh /usr/lib/cgi-bin
sudo cp customdomain/tahap2.sh /usr/lib/cgi-bin
sudo cp customdomain/runtahap2.sh /usr/lib/cgi-bin
sudo cp customdomain/aktivasi5.sh /usr/lib/cgi-bin
sudo cp customdomain/aktivasi7.sh /usr/lib/cgi-bin
sudo cp customdomain/acakkode.txt /usr/lib/cgi-bin
chmod 777 /usr/lib/cgi-bin/*
