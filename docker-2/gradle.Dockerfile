#Download base image 
FROM sbeliakou/centos:7.2

#Specify maintainer
MAINTAINER Aleh Tsuranau (aleh_tsuranau@epam.com)

RUN yum install -y java-1.8.0-openjdk-devel.x86_64 wget unzip; cd /opt && wget https://services.gradle.org/distributions/gradle-4.0.2-bin.zip && unzip gradle-4.0.2-bin.zip && ln -s gradle-4.0.2 gradle

ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.141-1.b16.el7_3.x86_64/jre/
ENV GRADLE_HOME=/opt/gradle
ENV PATH=$PATH:$GRADLE_HOME/bin

CMD gradle -v

