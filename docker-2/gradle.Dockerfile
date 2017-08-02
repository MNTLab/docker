FROM sbeliakou/centos:7.2
MAINTAINER Vitali Ulantsau
RUN  rpm --rebuilddb \
     &&  yum -y install java-1.8.0-openjdk-devel \
     &&  yum -y install unzip \
     &&	 curl -L -ogradle-4.0.2-bin.zip https://services.gradle.org/distributions/gradle-4.0.2-bin.zip \
     &&  unzip gradle-4.0.2-bin.zip -d /opt/gradle \
     &&  yum clean all 

ENV GRADLE_HOME /opt/gradle-4.0.2
ENV PATH /opt/gradle/gradle-4.0.2/bin:$PATH
ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk-1.8.0.141-1.b16.el7_3.x86_64
  
