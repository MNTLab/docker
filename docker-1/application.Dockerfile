FROM sbeliakou/centos:7.2
MAINTAINER Daniil Silnyagin (daniil_silnyagin@epam.com)
VOLUME /var/lib/tomcat/webapps/
ADD sample.war /var/lib/tomcat/webapps/
CMD sleep infinity
