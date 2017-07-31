FROM sbeliakou/centos:7.2
MAINTAINER Siarhei Beliakou (siarhei_beliakou@epam.com)
RUN rpm --rebuilddb; yum install -y tomcat tomcat-webapps
RUN rm -rf /var/lib/tomcat/webapps/sample.war
CMD /usr/libexec/tomcat/server start

