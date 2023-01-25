server {
    listen *:80;
    #listen ${NGINX_PORT};

    server_name purenginx.l00k.online;
    root /var/www;

    error_log  /var/log/nginx/error.log;
    access_log /var/log/nginx/access.log;

    location / {
        index index.html index.htm;
    }

}