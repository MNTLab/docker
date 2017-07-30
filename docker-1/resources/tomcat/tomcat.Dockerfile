FROM sbeliakou/centos:7.2
MAINTAINER Henadzi Pashuto (henadzi_pashuto@epam.com)
RUN yum update; yum install -y tomcat ; yum clean all
EXPOSE 8080
CMD /usr/libexec/tomcat/server start -DFOREGROUND


