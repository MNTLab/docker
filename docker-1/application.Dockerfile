FROM sbeliakou/centos:7.2
MAINTAINER Andrei Doropei (andrei_doropei@epam.com)
VOLUME /usr/share/tomcat/webapps/
ADD resources/sample.war /usr/share/tomcat/webapps/
CMD sleep infinity
