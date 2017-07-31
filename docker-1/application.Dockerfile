############################################################
# Dockerfile to build Datavolume Installed Containers
# Based on CentOS
############################################################

# Set the base image to Ubuntu
FROM sbeliakou/centos:7.2

# File Author / Maintaine
MAINTAINER Artem Aksenkin

# Volume
VOLUME /var/lib/tomcat/webapps/

# Add app from volume to appserver
ADD resources/sample.war /var/lib/tomcat/webapps/

#CMD
CMD sleep infinity

LABEL Component="datavolume" \
      Name="centos/datavolume-centos7" \
      Version="1.0.0" \
Release="1"
