#!/bin/bash
echo "Content-type: text/html"
echo ""
name=`echo "$QUERY_STRING" | awk '{split($0,array,"&")} END{print array[1]}' | awk '{split($0,array,"=")} END{print array[2]}' | tr [:upper:] [:lower:]`
domain=`echo "$QUERY_STRING" | awk '{split($0,array,"&")} END{print array[2]}' | awk '{split($0,array,"=")} END{print array[2]}'`
cek=`echo "$QUERY_STRING" | awk '{split($0,array,"&")} END{print array[3]}' | awk '{split($0,array,"=")} END{print array[2]}'`
if [ -z "$(ls -A /home/$name)" ]; then
echo "Subdomain yang anda masukkan belum terdaftar"
else
line=$(head -n 1 acak202.txt)
tanggal=$(date +%d-%m-%Y)
sub=$name.xcodehoster.com
if [[ "${name}" =~ [^a-z0-9] ]]; then
echo "Subdomain hanya boleh huruf kecil dan angka"
else
if [[ "${domain}" =~ [^a-z0-9.-] ]]; then
echo "Domain hanya boleh huruf kecil, angka dan titik"
else
if [[ $domain =~ "xcodehoster" ]]; then
echo "Tidak bisa menggunakan subdomain xcodehoster.com untuk domain"
else
if [[ $domain =~ "www" ]]; then
echo "Tidak boleh pakai www"
else
if [[ $domain =~ "xcode" ]]; then
echo "Tidak bisa menggunakan subdomain xcode.or.id atau xcode.co.id untuk domain"
else
if [[ $domain =~ "nasiwebhost" ]]; then
echo "Tidak bisa menggunakan subdomain nasiwebhost.com untuk domain"
else
if [[ "$cek" != "$line" ]]; then 
echo "Kode keamanan berubah atau salah tulis captcha, silahkan refresh dan daftar kembali"
else
acak=$(tr -dc 0-9 </dev/urandom | head -c 5 ; echo '')
echo $acak > acakkode.txt
convert \
    -size 225x100 \
    xc:lightblue \
    -font Bookman-DemiItalic \
    -pointsize 18 \
    -fill blue \
    -gravity center \
    -draw "text 0,0 $acak" \
    image2.png
convert \
    -size 225x100 \
    xc:lightblue \
    -font Bookman-DemiItalic \
    -pointsize 18 \
    -fill blue \
    -gravity center \
    -draw "text 0,0 $acak" \
    image2.png
convert \
    -size 225x100 \
    xc:lightblue \
    -font Bookman-DemiItalic \
    -pointsize 18 \
    -fill blue \
    -gravity center \
    -draw "text 0,0 $acak" \
    image2.png
convert image2.png -background white -wave 4x55 image2.png
sudo cp /usr/lib/cgi-bin/image2.png /home/xcodehoster
sudo cp aktivasi7.sh aktivasi8.sh
sed -i "s/unik/$domain/g" aktivasi8.sh
chmod 777 aktivasi8.sh
./aktivasi8.sh
rm aktivasi8.sh
cat <<EOT
<!DOCTYPE html>
<html>
<head>
<title>xcodehoster</title>
</head>
<body>
<h2>Welcome $name </h1>
<br>
<center>Domain sudah didaftarkan</center>
<br>
<br />
<br>
</body>
</html>
EOT
fi
fi
fi
fi
fi
fi
fi
fi
fi
