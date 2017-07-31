FROM sbeliakou/centos:7.2
MAINTAINER Andrei Doropei (andrei_doropei@epam.com)
RUN yum -y update; yum -y install epel-release; yum install -y nginx; \
	sed -i '47aproxy_pass http://tomcat:8080;' /etc/nginx/nginx.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

