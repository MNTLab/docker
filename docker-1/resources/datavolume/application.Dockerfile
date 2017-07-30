FROM sbeliakou/centos:7.2
MAINTAINER Siarhei Beliakou (siarhei_beliakou@epam.com)
VOLUME /var/lib/tomcat/webapps/
ADD sample.war /var/lib/tomcat/webapps/
CMD sleep infinity
