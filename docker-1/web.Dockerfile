FROM sbeliakou/centos:7.2 
MAINTAINER Andrei Konchyts (andrei_konchyts@epam.com)
RUN yum install nginx -y
COPY resources/tomcat.conf /etc/nginx/conf.d/
EXPOSE 80
CMD nginx -g 'daemon off;'
