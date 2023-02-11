#!/bin/bash
echo "Content-type: text/html"
echo ""
name=`echo "$QUERY_STRING" | awk '{split($0,array,"&")} END{print array[1]}' | awk '{split($0,array,"=")} END{print array[2]}' | tr [:upper:] [:lower:]`
password=`echo "$QUERY_STRING" | awk '{split($0,array,"&")} END{print array[2]}' | awk '{split($0,array,"=")} END{print array[2]}'`
email=`echo "$QUERY_STRING" | awk '{split($0,array,"&")} END{print array[3]}' | awk '{split($0,array,"=")} END{print array[2]}'`
wa=`echo "$QUERY_STRING" | awk '{split($0,array,"&")} END{print array[4]}' | awk '{split($0,array,"=")} END{print array[2]}'`
cek=`echo "$QUERY_STRING" | awk '{split($0,array,"&")} END{print array[5]}' | awk '{split($0,array,"=")} END{print array[2]}'`
line=$(head -n 1 acak201.txt)
tanggal=$(date +%d-%m-%Y)
random=$(tr -dc a-z0-9 </dev/urandom | head -c 13 ; echo '')
function urldecode() { : "${*//+/ }"; echo -e "${_//%/\x}"; }
email=$(printf '%b' "${email//%/\\x}")
if [[ "${name}" =~ [^a-z0-9] ]]; then
echo "Username hanya boleh huruf kecil dan angka"
else
if [[ "${password}" =~ [^a-z0-9] ]]; then
echo "Password hanya boleh huruf kecil dan angka"
else
if [[ "${email}" =~ [^a-z0-9.@] ]]; then
echo "Hanya mendukung format e-mail"
else
if [[ $email =~ "@peykesabz.com" ]]; then
echo "Registrasi hanya mendukung peykesabz.com"
else
if [ -n "$(ls /home/checkdata/$email | xargs -n 1 basename)" ]; then
echo "E-mail ini sudah digunakan, silahkan gunakan e-mail yang lain"
else
if [[ "$cek" != "$line" ]]; then 
echo "Captcha telah berubah atau salah tulis captcha, silahkan refresh dan daftar kembali, huruf besar dan kecil berpengaruh"
else
echo $email > /home/checkdata/$email
echo $name, $password, $email, $wa, $tanggal. > /home/checkdata2/$email
acak=$(tr -dc 2-5 </dev/urandom | head -c 10 ; echo '')
echo $acak > acak.txt
convert \
    -size 725x100 \
    xc:lightblue \
    -font Bookman-DemiItalic \
    -pointsize 18 \
    -fill blue \
    -gravity center \
    -draw "text 0,0 $acak" \
    image.png
convert \
    -size 725x100 \
    xc:lightblue \
    -font Bookman-DemiItalic \
    -pointsize 18 \
    -fill blue \
    -gravity center \
    -draw "text 0,0 $acak" \
    image.png
convert \
    -size 725x100 \
    xc:lightblue \
    -font Bookman-DemiItalic \
    -pointsize 18 \
    -fill blue \
    -gravity center \
    -draw "text 0,0 $acak" \
    image.png
convert image.png -background white -wave 4x55 image.png
sudo cp /usr/lib/cgi-bin/image.png /home/xcodehoster
if [[ "${wa}" =~ [^a-z0-9] ]]; then
echo "Nomor WA hanya boleh angka"
else
if [ -z "$(ls -A /home/$name)" ]; then
cp /usr/lib/cgi-bin/image.png /var/www/html/
echo $name, $password, $email, $wa, $tanggal. > /home/datapengguna/$name.$tanggal
echo $name, $password, $email, $wa, $tanggal. > /home/recovery/$name.$random
sudo mcrypt /home/recovery/$name.$random -k $wa
rm /home/recovery/$name.$random
sudo chmod 777 /home/recovery/*
sudo mkdir /home/$name
sudo mkdir /home/$name/recovery
sudo cp /home/filemanager/* /home/$name
sudo cp /home/filemanager/* /home/$name/recovery
sudo chmod 777 /home/$name
sudo chmod 777 /home/$name/*
sudo chmod 777 /home/$name/recovery
sudo chmod 777 /home/$name/recovery/*
sed -i "s/unik/$password/g" /home/$name/config.php
sed -i "s/unik/$password/g" /home/$name/recovery/config.php
cp /home/xcodehoster/subdomain.conf /etc/apache2/sites-available/$name.conf
sed -i "s/sample/$name/g" /etc/apache2/sites-available/$name.conf
sudo a2ensite $name.conf
sudo systemctl reload apache2
sudo cp /usr/lib/cgi-bin/aktivasi3.sh /usr/lib/cgi-bin/aktivasi4.sh
sed -i "s/unik/$name/g" /usr/lib/cgi-bin/aktivasi4.sh
chmod 777 aktivasi4.sh
./aktivasi4.sh
rm aktivasi4.sh
mysql -uroot -ppasswordmysql -e "CREATE USER '$name'@'localhost' IDENTIFIED WITH mysql_native_password BY '$password';"
mysql -uroot -ppasswordmysql -e "GRANT ALL PRIVILEGES ON $name.* TO '$name'@'localhost';"
cat <<EOT
<!DOCTYPE html>
<html>
<head>
<title>Xcodehoster</title>
</head>
<body>
<h2>Welcome $name </h1>
Alamat website anda : https://$name.xcodehoster.com <br />
Login : https://$name.xcodehoster.com/login.php<br />
Username : admin<br />
Password : $password<br />
Cara ganti password edit pada bagian config.php, cari password anda dan ganti dengan password yang baru<br />
<br />
Login phpmyadmin<br />
Login : https://$name.xcodehoster.com/phpmyadmin<br />
Username : $name <br />
Password : $password<br />
<br />
Jika file config.php atau login.php terhapus<br />
Login : https://$name.xcodehoster.com/recovery/login.php<br />
Username : admin <br />
Password : $password<br />
<br />
Saat ini subdomain anda sudah aktif
<br />
File login.php dan config.php tidak boleh dihapus. 
<br>
<br>
</body>
</html>
EOT
else
echo "Subdomain yang anda masukkan sudah ada pemiliknya"
fi
fi
fi
fi
fi
fi
fi
fi
