FROM sbeliakou/centos:7.2
MAINTAINER Pavel Yurchuk (pavel_yurchuk@epam.com)
VOLUME /var/lib/tomcat/webapps/
ADD resources/sample.war /var/lib/tomcat/webapps/
CMD sleep infinity
