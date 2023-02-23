zone="unik"
email="Akun e-mail cloudflare"
key="masukkan global api key di sini"

curl -s -X POST "https://api.cloudflare.com/client/v4/zones" \
     -H "X-Auth-Email: $email" \
     -H "X-Auth-Key: $key" \
     -H "Content-Type: application/json" \
     --data '{"account": {"id": "Account id dari cloudflare"}, "name": "unik", "jump_start": true}' > /dev/null
