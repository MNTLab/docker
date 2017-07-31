FROM sbeliakou/centos:7.2
MAINTAINER Aliaksei Karzhou (aliaksei_karzhou@epam.com)
RUN yum install tomcat -y \	
  yum install tomcat-webapps -y; yum clean all
CMD /usr/libexec/tomcat/server start
