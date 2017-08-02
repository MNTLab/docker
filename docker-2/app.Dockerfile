FROM sbeliakou/centos:latest
MAINTAINER Vitali Ulantsau
RUN  rpm --rebuilddb \
     &&  yum -y install java-devel \
     &&  yum clean all 
CMD java -jar /opt/gs-spring-boot-0.1.0.jar
