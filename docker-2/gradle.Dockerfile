FROM sbeliakou/centos:7.2
MAINTAINER Zakhar Virinsky (zakhar_virinsky@epam.com)
ENV GRADLE_VERSION 4.0.2
ENV GRADLE_HOME /opt/gradle
ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk-1.8.0.141-1.b16.el7_3.x86_64/jre/
ADD https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip /opt/gradle.zip
WORKDIR /opt
RUN yum install -y yum-plugin-ovl
RUN yum install -y unzip java-1.8.0-openjdk-devel && yum clean all && unzip gradle.zip && ln -s gradle-${GRADLE_VERSION} gradle && rm gradle.zip
RUN yum remove -y unzip
ENV PATH $PATH:$GRADLE_HOME/bin
CMD ["gradle", "-version"]
