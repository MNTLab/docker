FROM sbeliakou/centos:7.2 
MAINTAINER Andrei Konchyts (andrei_konchyts@epam.com)
RUN yum install tomcat tomcat-webapps -y; yum clean all
CMD /usr/libexec/tomcat/server start
