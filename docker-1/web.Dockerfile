FROM sbeliakou/centos
MAINTAINER Zakhar Virinsky (zakhar_virinsky@epam.com)
RUN yum install -y nginx
RUN rm /etc/nginx/nginx.conf
ADD resources/nginx.conf /etc/nginx/
EXPOSE 80
CMD nginx
