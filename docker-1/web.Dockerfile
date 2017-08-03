FROM sbeliakou/centos:7.2
MAINTAINER Pavel Yurchuk (pavel_yurchuk@epam.com)
RUN yum -y install nginx; yum clean all
RUN sed -i '47aproxy_pass http://tomcat:8080;' /etc/nginx/nginx.conf
EXPOSE 80 
CMD ["nginx", "-g", "daemon off;"]
