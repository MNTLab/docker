FROM sbeliakou/centos:7.2
MAINTAINER Andrei Doropei (andrei_doropei@epam.com)
RUN yum -y update; yum -y install epel-release; yum -y install java-devel wget unzip
RUN wget https://services.gradle.org/distributions/gradle-3.4.1-bin.zip && \
    mkdir /opt/gradle && \
    unzip -d /opt/gradle gradle-3.4.1-bin.zip
ENV PATH=$PATH:/opt/gradle/gradle-3.4.1/bin
ENV JAVA_HOME=/usr/lib/jvm/jre
ENV GRADLE_HOME=/opt/gradle
CMD gradle -v
