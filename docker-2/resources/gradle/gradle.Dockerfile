FROM sbeliakou/centos:7.2
MAINTAINER Siarhei Beliakou (siarhei_beliakou@epam.com)
RUN yum install wget unzip -y; mkdir /opt/gradle; cd /opt/gradle; wget https://services.gradle.org/distributions/gradle-4.0.2-bin.zip; unzip -d /opt/gradle gradle-4.0.2-bin.zip; rm /opt/gradle/gradle-4.0.2-bin.zip
RUN yum install java-1.8.0-openjdk-devel.x86_64 -y; yum clean all;
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.141-1.b16.el7_3.x86_64/jre/
ENV PATH=$PATH:/opt/gradle/gradle-4.0.2/bin
CMD gradle -v

