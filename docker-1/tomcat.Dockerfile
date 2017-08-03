FROM sbeliakou/centos:7.2
RUN rpm --rebuilddb; yum install -y tomcat tomcat-webapps
CMD /usr/libexec/tomcat/server start
