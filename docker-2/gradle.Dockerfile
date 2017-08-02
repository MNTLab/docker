FROM sbeliakou/centos:7.2
MAINTAINER Marija Demenkova (marija_demenkova@epam.com)
RUN yum -y update \
    && yum -y install epel-release java-1.8.0-openjdk wget unzip \
    && wget https://services.gradle.org/distributions/gradle-3.4.1-bin.zip \
    && mkdir /opt/gradle \
    && unzip -d /opt/gradle gradle-3.4.1-bin.zip 
ENV PATH=$PATH:/opt/gradle/gradle-3.4.1/bin
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.141-1.b16.el7_3.x86_64/jre/
ENV GRADLE_VERSION 3.4.1
ENV GRADLE_HOME=/opt/gradle/gradle-3.4.1
CMD ["gradle", "-v"]
