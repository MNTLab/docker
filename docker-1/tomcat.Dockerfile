FROM sbeliakou/centos
MAINTAINER Zakhar Virinsky (zakhar_virinsky@epam.com)
RUN yum install -y tomcat tomcat-webapps; yum clean all
EXPOSE 8080
CMD /usr/libexec/tomcat/server start
