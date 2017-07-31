FROM sbeliakou/centos:7.2
MAINTAINER Aliaksei Semirski (aliaskei_semirski@epam.com)
RUN yum install nginx -y
EXPOSE 80
ADD resources/nginx.sh /etc/nginx/
CMD chmod +x /etc/nginx/nginx.sh && /etc/nginx/nginx.sh && nginx -g 'daemon off;'