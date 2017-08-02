FROM sbeliakou/centos:7.2
MAINTAINER Andrei Doropei (andrei_doropei@epam.com)
RUN yum -y update; yum -y install epel-release; yum -y install java-devel
CMD java -jar /opt/gs-spring-boot-0.1.0.jar

