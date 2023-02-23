zone="unik"
email="Akun e-mail cloudflare"
key="masukkan global api key di sini"

zoneid=$(curl -s -X GET "https://api.cloudflare.com/client/v4/zones?name=$zone&status=active" \
     -H "X-Auth-Email: $email" \
     -H "X-Auth-Key: $key" \
     -H "Content-Type: application/json" | jq -r '{"result"}[] | .[0] | .id')

curl -X POST "https://api.cloudflare.com/client/v4/zones/$zoneid/dns_records" \
     -H "X-Auth-Email: $email" \
     -H "X-Auth-Key: $key" \
     -H "Content-Type: application/json" \
     --data '{"type":"A","name":"unik","content":"ip","ttl":120,"priority":10,"proxied":true}' > /dev/null

curl -X POST "https://api.cloudflare.com/client/v4/zones/$zoneid/dns_records" \
     -H "X-Auth-Email: $email" \
     -H "X-Auth-Key: $key" \
     -H "Content-Type: application/json" \
     --data '{"type":"A","name":"www","content":"ip", "ttl":120,"priority":10,"proxied":true}' > /dev/null
