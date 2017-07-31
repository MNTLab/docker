FROM sbeliakou/centos:7.2
MAINTAINER Daniil Silnyagin (daniil_silnyagin@epam.com)
RUN yum install -y nginx
ADD nginx-server.conf /etc/nginx/conf.d/
EXPOSE 80
CMD nginx -g 'daemon off;'
