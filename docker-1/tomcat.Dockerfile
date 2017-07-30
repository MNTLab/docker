#Download base image 
FROM sbeliakou/centos:7.2

#Specify maintainer
MAINTAINER Aleh Tsuranau (aleh_tsuranau@epam.com)

RUN yum install -y tomcat tomcat-webapps; yum clean all

CMD /usr/libexec/tomcat/server start 

