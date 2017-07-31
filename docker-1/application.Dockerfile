FROM sbeliakou/centos:7.2 
MAINTAINER Andrei Konchyts (andrei_konchyts@epam.com)
VOLUME /var/lib/tomcat/webapps
COPY resources/sample.war /var/lib/tomcat/webapps/
CMD sleep infinity
