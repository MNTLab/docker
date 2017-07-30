FROM sbeliakou/centos:7.2
MAINTAINER Henadzi Pashuto (henadzi_pashuto@epam.com)
RUN yum install -y nginx
RUN sed -i '47aproxy_pass http://tomcat:8080;' /etc/nginx/nginx.conf
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
EXPOSE 80
CMD nginx


