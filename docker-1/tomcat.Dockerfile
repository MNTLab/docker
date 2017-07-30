FROM sbeliakou/centos:7.2
MAINTAINER Marija Demenkova (marija_demenkova@epam.com)
RUN yum -y update \
    && yum -y install epel-release \
    && yum -y install tomcat \
    && yum clean all
EXPOSE 8080
CMD /usr/libexec/tomcat/server start
