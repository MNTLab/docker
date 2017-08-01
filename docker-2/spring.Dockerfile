FROM alpine:3.6
MAINTAINER Artem Aksenkin
RUN yum install -y java-1.8.0-openjdk-devel.x86_64; yum clean all
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.141-1.b16.el7_3.x86_64/jre/
WORKDIR /home/student/PycharmProjects/docker/docker-2/jenkins_slave/docker-2
CMD java -jar build/libs/gs-spring-boot-0.1.0.jar