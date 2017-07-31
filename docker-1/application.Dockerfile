FROM sbeliakou/centos:7.2
MAINTAINER Aliaksei Semirski (aliaskei_semirski@epam.com)
VOLUME /var/lib/tomcat/webapps/
ADD resources/sample.war /var/lib/tomcat/webapps/
CMD sleep infinity