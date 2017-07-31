FROM sbeliakou/centos:7.2
MAINTAINER Andrei Doropei (andrei_doropei@epam.com)
RUN yum -y update; yum -y install epel-release; yum -y install tomcat
CMD /usr/libexec/tomcat/server start
