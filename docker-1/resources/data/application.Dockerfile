FROM sbeliakou/centos:7.2
MAINTAINER Henadzi Pashuto (henadzi_pashuto@epam.com)
VOLUME /var/lib/tomcat/webapps/
ADD sample.war /var/lib/tomcat/webapps/
CMD sleep infinity


