FROM sbeliakou/centos:7.2
MAINTAINER Siarhei Beliakou (siarhei_beliakou@epam.com)
RUN yum install -y tomcat tomcat-webapps
EXPOSE 80
CMD tomcat -DFOREGROUND
