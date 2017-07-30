FROM sbeliakou/centos:7.2
MAINTAINER Vitali Ulantsau
RUN yum -y install wget; yum clean all 
RUN yum -y install jre; yum clean all 
RUN wget http://ftp.byfly.by/pub/apache.org/tomcat/tomcat-7/v7.0.79/bin/apache-tomcat-7.0.79.tar.gz -P /home/
RUN tar -xvf /home/apache-tomcat-7.0.79.tar.gz -C /opt/
RUN mv /opt/apache-tomcat-7.0.79/ /opt/tomcat/
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]

