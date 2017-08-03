FROM sbeliakou/centos:7.2
VOLUME /var/lib/tomcat/webapps/
ADD sample.war /var/lib/tomcat/webapps/
CMD sleep infinity
