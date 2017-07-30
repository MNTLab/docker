FROM sbeliakou/centos:7.2
MAINTAINER Marija Demenkova (marija_demenkova@epam.com)
RUN yum -y update \
    && yum -y install epel-release \
    && yum -y install nginx \
    && yum clean all \
    && sed -i '47aproxy_pass http://tomcat:8080;' /etc/nginx/nginx.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
