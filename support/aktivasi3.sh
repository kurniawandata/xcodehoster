curl -s -X POST "https://api.cloudflare.com/client/v4/zones/tulisidzonedisini/dns_records" \
     -H "X-Auth-Email: nama@email.com" \
     -H "X-Auth-Key: tulisauthkeydisini" \
     -H "Content-Type: application/json" \
     --data '{"type":"A","name":"unik.xcodehoster.com","content":"ip","ttl":120,"priority":10,"proxied":true}' > /dev/null
