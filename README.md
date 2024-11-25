# xcodehoster

Xcodehoster 2025 - v9.0 for Ubuntu Server 24.04
--------------------
![alt text](http://xcode.or.id/04_small-logo.png)

Xcodehoster adalah program hosting yang dirancang khusus untuk Ubuntu Server 24.04 yang merupakan produk dari X-code (PT. Teknologi Server Indonesia).
Xcodehoster ini menggunakan PHP 8.3. Untuk implementasinya di https://xcodehoster.com.

File manager
------------
File manager yang digunakan adalah Tiny File Manager dengan sumber dari https://github.com/prasathmani/tinyfilemanager

Cara menggunakan
----------------
1. git clone https://github.com/kurniawandata/xcodehoster
2. cd xcodehoster
3. ./install.sh
4. Arahkan domain dan www yang ada di cloudflare ke ip server 
5. Ambil Zone ID di overview, salin di notepad dulu
6. Di overview, klik get Get your API Token lalu klik View pada Global API Key
7. ./konfigurasiuntukcloudflare.sh
8. Masukkan Zone ID, Global API dan ip server ke file
9. Masuk ke SSL/TLS, ubah ke Full (Strict), di Edge Certificates, nyalakan Always Use HTTPS
10. Pilih Origin Server lalu Create Certificate, lalu create, lalu simpan pem dan key ke notepad
11. ./aktifkandomain
12. Masukkan hasil create untuk pem dan key ke file yang dipanggil
13. Setelah selesai tinggal panggil domainnya di browser.

Program ini telah diimplementasikan
-------------------------------
Anda bisa mengakses website xcodehoster di https://xcodehoster.com

Video tutorial
----------------
Video tutorial : https://www.youtube.com/watch?v=lptpKA0kEf0

Licensi
-------
GNU General Public License v3

Program ini dibuat oleh :
--------------------------------------------
Kurniawan. E-mail : admin@xcodetraining.com

https://xcode.or.id, https://xcode.co.id, https://xcodetraining.com


Donasi :
Donasi untuk Kurniawan telah berkontribusi sebagai pengembang free software & open source dalam bentuk gopay<br />

 <img src="https://xcode.co.id/qrcodex2.png" alt="gopay"> <br />
 Gopay (Customer)
