FROM sbeliakou/centos:7.2
MAINTAINER Marija Demenkova (marija_demenkova@epam.com)
RUN yum -y update \
    && yum -y install epel-release java-1.8.0-openjdk\ 
    && yum clean all
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.141-1.b16.el7_3.x86_64/jre/
CMD java -jar /opt/gs-spring-boot-0.1.0.jar
