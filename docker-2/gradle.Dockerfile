FROM sbeliakou/centos:7.2
MAINTAINER Henadzi Pashuto (henadzi_pashuto@epam.com)
RUN yum install -y java-1.8.0-openjdk-devel.x86_64 wget unzip; yum clean all
RUN mkdir /opt/gradle && cd /opt/gradle && wget https://downloads.gradle.org/distributions/gradle-4.0-bin.zip && unzip gradle-4.0-bin.zip
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.141-1.b16.el7_3.x86_64/jre/
ENV PATH=$PATH:/opt/gradle/gradle-4.0/bin
CMD gradle -v


