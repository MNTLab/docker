FROM sbeliakou/centos:7.2
MAINTAINER Aliaksei Semirski (aliaskei_semirski@epam.com)
RUN yum install tomcat -y \
	yum install tomcat-webapps -y
CMD /usr/libexec/tomcat/server start