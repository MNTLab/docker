FROM sbeliakou/centos:7.2
MAINTAINER Daniil Silnyagin (daniil_silnyagin@epam.com)
RUN yum install -y tomcat tomcat-webapps
CMD /usr/libexec/tomcat/server start
