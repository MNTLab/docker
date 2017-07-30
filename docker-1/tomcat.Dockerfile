FROM sbeliakou/centos:7.2
MAINTAINER Pavel Yurchuk (pavel_yurchuk@epam.com)
RUN yum -y install tomcat; yum -y install tomcat-webapps; yum clean all
CMD /usr/libexec/tomcat/server start
