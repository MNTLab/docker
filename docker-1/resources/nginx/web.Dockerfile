FROM sbeliakou/centos:7.2
MAINTAINER Siarhei Beliakou (siarhei_beliakou@epam.com)
RUN yum install -y nginx
RUN sed -i '/location \/ {/s//location \/ { proxy_pass http:\/\/tomcat:8080;/'  /etc/nginx/nginx.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
