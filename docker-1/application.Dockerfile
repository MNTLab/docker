FROM sbeliakou/centos:7.2
MAINTAINER Aliaksei Karzhou (aliaksei_karzhou@epam.com)
VOLUME /var/lib/tomcat/webapps/
ADD clusterjsp.war /var/lib/tomcat/webapps/
CMD sleep infinity