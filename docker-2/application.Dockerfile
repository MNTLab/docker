FROM sbeliakou/centos:7.2
MAINTAINER Zakhar Virinsky (zakhar_virinsky@epam.com)
ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk-1.8.0.141-1.b16.el7_3.x86_64/jre/
RUN yum install -y yum-plugin-ovl
RUN yum install -y java-1.8.0-openjdk
RUN mkdir /apps
COPY gs-spring-boot-0.1.0.jar /apps
EXPOSE 8080
CMD java -jar /apps/gs-spring-boot-0.1.0.jar
