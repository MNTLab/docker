#Download base image 
FROM sbeliakou/centos:7.2

#Specify maintainer
MAINTAINER Aleh Tsuranau (aleh_tsuranau@epam.com)

RUN yum -y install java-1.8.0-openjdk; yum clean all && mkdir /opt/app
COPY ../gs-spring-boot-0.1.0.jar /opt/app/

EXPOSE 8080

CMD java -jar /opt/app/gs-spring-boot-0.1.0.jar
