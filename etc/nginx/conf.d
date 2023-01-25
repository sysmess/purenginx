server {
    listen 80;
    listen [::]:80;

    server_name nginx.l00k.online www.nginx.l00k.online;
    server_tokens off;

    location /.well-known/acme-challenge/ {
        root /var/www/certbot;
    }

    location / {
        return 301 https://nginx.l00k.online$request_uri;
    }
}

server {
    listen 443 default_server ssl http2;
    listen [::]:443 ssl http2;

    server_name nginx.l00k.online;

    ssl_certificate /etc/nginx/ssl/live/nginx.l00k.online/fullchain.pem;
    ssl_certificate_key /etc/nginx/ssl/live/nginx.l00k.online/privkey.pem;
    
    location / {
    	# ...
    }
}