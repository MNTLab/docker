#Download base image 
FROM sbeliakou/centos:7.2

#Specify maintainer
MAINTAINER Aleh Tsuranau (aleh_tsuranau@epam.com)

VOLUME /var/lib/tomcat/webapps/
ADD sample.war /var/lib/tomcat/webapps/
CMD sleep infinity
