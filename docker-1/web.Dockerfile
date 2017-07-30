FROM sbeliakou/centos:7.2
MAINTAINER Vitali Ulantsau
RUN yum -y install nginx
RUN sed -i '47aproxy_pass http://tomcat:8080;' /etc/nginx/nginx.conf
EXPOSE 80
CMD nginx -g 'daemon off;'

