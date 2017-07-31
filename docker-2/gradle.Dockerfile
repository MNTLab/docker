FROM sbeliakou/centos:7.2 
MAINTAINER Andrei Konchyts (andrei_konchyts@epam.com)

ENV GRADLE_HOME /opt/gradle
ENV GRADLE_VERSION 4.0.2
ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk-1.8.0.141-1.b16.el7_3.x86_64

RUN yum install java-1.8.0-openjdk-devel wget unzip -y; yum clean all && \
    wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" && \
    unzip gradle.zip && \
    rm gradle.zip && \
    mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" && \
    ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle

CMD gradle
