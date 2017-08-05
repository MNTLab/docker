FROM sbeliakou/centos:7.2
MAINTAINER Siarhei Beliakou (siarhei_beliakou@epam.com)
RUN yum install -y nginx \ 
    && sed -i '0,/location \/ {/s//location \/ { proxy_pass http:\/\/tomcat:8080;/' /etc/nginx/nginx.conf \
    && yum clean all
EXPOSE 80 
CMD nginx -g 'daemon off;'
