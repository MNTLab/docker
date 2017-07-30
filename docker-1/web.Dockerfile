#Download base image 
FROM sbeliakou/centos:7.2

#Specify maintainer
MAINTAINER Aleh Tsuranau (aleh_tsuranau@epam.com)

RUN yum -y install nginx
RUN sed -i 's|location / {|location / { proxy_pass http://tomcatcont:8080;|' /etc/nginx/nginx.conf
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
EXPOSE 80
CMD nginx
