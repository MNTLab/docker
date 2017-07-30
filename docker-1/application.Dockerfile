FROM sbeliakou/centos:7.2
MAINTAINER Vitali Ulantsau
VOLUME /opt/tomcat/webapps/
ADD sample.war /opt/tomcat/webapps/
CMD sleep infinity
