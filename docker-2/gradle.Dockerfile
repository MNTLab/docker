FROM sbeliakou/centos:7.2
MAINTAINER Siarhei Beliakou (siarhei_beliakou@epam.com)
ENV PATH /opt/gradle/gradle-4.0.2/bin:$PATH
ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk-1.8.0.141-1.b16.el7_3.x86_64/jre
RUN      rpm --rebuilddb \
     &&  yum -y install java-devel \
     &&  yum -y install unzip \
	 &&	 curl -L -ogradle-4.0.2-bin.zip https://services.gradle.org/distributions/gradle-4.0.2-bin.zip \
     &&  unzip gradle-4.0.2-bin.zip -d /opt/gradle \
     &&  rm -rf gradle-4.0.2-bin.zip \
     && yum clean all