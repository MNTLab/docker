sed -i '/location \/ {/a proxy_pass http:\/\/tomcat:8080;' /etc/nginx/nginx.conf
sed -i '79d' /etc/nginx/nginx.conf