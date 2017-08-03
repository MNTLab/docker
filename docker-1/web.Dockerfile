FROM sbeliakou/centos:7.2
RUN yum -y install nginx
RUN sed -i '/location \/ {/s//location \/ { proxy_pass http:\/\/tomcat:8080;/'  /etc/nginx/nginx.conf
EXPOSE 80
CMD nginx -g 'daemon off;'
