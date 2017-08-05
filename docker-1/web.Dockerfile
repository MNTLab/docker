############################################################
# Dockerfile to build Nginx Installed Containers
# Based on CentOS
############################################################

# Set the base image to Ubuntu
FROM sbeliakou/centos:7.2

# File Author / Maintainer
MAINTAINER Artem Aksenkin

# Install EPEL
# RUN yum install -y epel-release && yum clean all

# Update RPM Packages
# RUN yum -y update && yum clean all
# Install Nginx
RUN yum install -y nginx
# && yum clean all

# forward request and error logs to docker log collector
#RUN ln -sf /dev/stdout /var/log/nginx/access.log
#RUN ln -sf /dev/stderr /var/log/nginx/error.log

# Remove the default Nginx configuration file
RUN rm -v /etc/nginx/nginx.conf

# Copy a configuration file from the current directory
ADD nginx.conf /etc/nginx/

# Append "daemon off;" to the beginning of the configuration
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Expose ports
EXPOSE 80

# Set the default command to execute
# when creating a new container
#CMD systemctl start nginx
CMD ["nginx"]
#, "-g", "daemon off;"]
# Labels
LABEL Component="nginx" \
      Name="centos/nginx-centos7" \
      Version="1.0.0" \
Release="1"
