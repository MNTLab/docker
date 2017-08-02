FROM sbeliakou/centos:7.2
MAINTAINER Siarhei Beliakou (siarhei_beliakou@epam.com)
RUN yum install java-1.8.0-openjdk-devel.x86_64 -y; yum clean all;
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.141-1.b16.el7_3.x86_64/jre/
CMD java -jar /spring/gs-spring-boot-0.1.0.jar

