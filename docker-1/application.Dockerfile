FROM sbeliakou/centos
MAINTAINER Zakhar Virinsky (zakhar_virinsky@epam.com)
VOLUME /var/lib/tomcat/webapps/
ADD resources/sample.war /var/lib/tomcat/webapps/
CMD sleep infinity
