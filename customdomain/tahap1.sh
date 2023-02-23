#!/bin/bash
#Desain front end halaman login ini dibuat oleh awan - e-mail: hermawan9815@gmail.com , untuk back end oleh kurniawan - e-mail: kurniawanajazenfone@gmail.com
echo "Content-type: text/html"
echo ""
patch=$(tr -dc A-Za-z0-9 </dev/urandom | head -c 13 ; echo '')
convert \
    -size 225x100 \
    xc:lightblue \
    -font Bookman-DemiItalic \
    -pointsize 18 \
    -fill blue \
    -gravity center \
    -draw "text 0,0 '$(cat acak202.txt)'" \
    image2.png
convert image2.png -background white -wave 4x55 image2.png
sudo cp image2.png /home/xcodehoster
sudo cp /usr/lib/cgi-bin/image2.png /home/xcodehoster
cat <<EOT
<!DOCTYPE html>
<html>
<head>
    <title>Pendaftaran domain di xcodehoster</title>
     <link rel="stylesheet" href="https://server3.nasihosting.com/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <style>
    { 
        font: bold 16px;
        color:WHITE;
        background-color:BLACK;
        width:100px;border-radius: 5px;
        text-align:center;
    }
    .errmsg
    {color:#ff0000;}
    </style>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="offset-1 col-10 mt-4">
                <h3 style="text-align: center;">Registration domain - PHP 8.2 (Tahap 1)</h3>
<br>
                <form action="runtahap1.sh" method="get">
                <table class="table">
     <tr>
                        <td>Nama Sub domain : </td>
                        <td>
                            <input type="text" name="name" pattern="^[a-z0-9]+$">.nasihosting.com
                        </td>
                    </tr>
                    

                    <tr>
                        <td>Nama domain : </td>
                        <td>
                            <input type="text" name="domain" class="form-control">
                        </td>
                    </tr>


                    <tr>
                       <td>
                        Captcha </td>
                       <td colspan="2"><img src="https://xcodehoster.com/image2.png?$patch">
                       </td>
                        </tr>
                     <tr>
                        <td>Type Captcha : </td>
                        <td>
                            <input type="text" name="cek" pattern="^[a-zA-Z0-9]+$" title="Captcha." class="form-control">
                        </td>
                    </tr>
                   


                     <tr>
                        <td colspan="3" style="text-align:right;">
                            <input type="submit" value="Daftar" class="btn btn-sm btn-primary form-control"/>
                        </td>
                    </tr>
                </table>
                </form>
Teknologi captcha gambar, filter input hanya mendukung huruf dan angka dibackend dan berbagai proteksinya lainnya dibuat algoritma dan kode sumbernya oleh PT. Teknologi Server Indonesia. Jika ingin pakai domain sendiri maka sebelumnya harus punya akun subdomain dulu.

            </div>
        </div>
    </div>
</body>

</html>
EOT
