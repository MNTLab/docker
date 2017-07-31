FROM sbeliakou/centos:7.2 
MAINTAINER Andrei Konchyts (andrei_konchyts@epam.com)

RUN yum install java-1.8.0-openjdk -y; yum clean all && \
    mkdir /opt/app
COPY ../gs-spring-boot-0.1.0.jar /opt/app/

EXPOSE 8080

CMD java -jar /opt/app/gs-spring-boot-0.1.0.jar
