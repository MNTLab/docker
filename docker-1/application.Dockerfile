FROM sbeliakou/centos:7.2
MAINTAINER Marija Demenkova (marija_demenkova@epam.com)
VOLUME /usr/share/tomcat/webapps/
ADD resources/sample.war /usr/share/tomcat/webapps/
CMD sleep infinity
