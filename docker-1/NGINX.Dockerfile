FROM sbeliakou/centos:7.2
MAINTAINER Aliaksei Karzhou (aliaksei_karzhou@epam.com)
RUN yum install nginx -y
EXPOSE 80
ADD nginx.sh /etc/nginx/
CMD nginx -g 'daemon off;'
