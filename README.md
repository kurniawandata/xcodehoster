# xcodehoster

Xcodehoster 7.0
--------------------
![alt text](http://xcode.or.id/04_small-logo.png)

Xcodehoster adalah program hosting yang dirancang khusus untuk Ubuntu Server 22.04 & Linux Mint 21 yang merupakan produk dari X-code (PT. Teknologi Server Indonesia).
Xcodehoster ini menggunakan PHP 8.2

File manager
------------
File manager yang digunakan adalah Tiny File Manager dengan sumber dari https://github.com/prasathmani/tinyfilemanager

Cara menggunakan
----------------
1. git clone https://github.com/kurniawandata/xcodehoster
2. cd xcodehoster
3. ./install.sh
4. Modifikasi yang diperlukan seperti file aktivasi3.sh di /usr/lib/cgi-bin (Masukkan Zone ID, global API Key dan ip server di sini) dan file dengan ekstensi pem dan key untuk SSL di /etc/apache2/ssl.
5. Setelah konfigurasi file aktivasi3.sh dan file ekstensi pem dan key di /etc/apache2/ssl, jalankan ./aktifkandomain.
6. Setelah selesai tinggal panggil domainnya di browser.

Program ini telah diimplementasikan
-------------------------------
Anda bisa mengakses nasihosting di https://xcodehoster.com

Licensi
-------
GNU General Public License v3

Program ini dibuat oleh :
--------------------------------------------
Kurniawan. E-mail : kurniawanajazenfone@gmail.com
xcode.or.id


Donasi :
--------
Donasi untuk Kurniawan telah berkontribusi sebagai pengembang free software & open source dalam bentuk gopay<br />

 <img src="https://xcode.co.id/qrcodex2.png" alt="gopay"> <br />
 Gopay (Customer)
