############################################################
# Dockerfile to build Tomcat Installed Containers
# Based on CentOS
############################################################

# Set the base image to Ubuntu
FROM sbeliakou/centos:7.2

# File Author / Maintainer
MAINTAINER Artem Aksenkin

# Install EPEL
RUN rpm --rebuilddb; yum install -y tomcat tomcat-webapps && yum clean all

# Update RPM Packages
#RUN yum -y update && yum clean all

# Install Tomcat
#RUN yum install -y tomcat && yum clean all

#CMD systemctl start tomcat
CMD /usr/libexec/tomcat/server start
# Labels
LABEL Component="tomcat" \
      Name="centos/tomcat-centos7" \
      Version="1.0.0" \
Release="1"
