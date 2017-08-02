MTN.*NIX.11 Automated Environment Configuration Management
---

***Student***: Anton Maslakou


Home Task
---

Using base docker image ***sbeliakou/centos:7.2***

1. Wiht ```Dockerfiles```:
    - Create Docker Image of ```nginx``` ([web.Dockerfile](/web.Dockerfile))
    
    ``` docker build -t my-nginx -f web.Dockerfile . ```
    
    - Create Docker Image of ```Tomcat 7``` ([tomcat.Dockerfile](/tomcat.Dockerfile))
    
    ``` docker build -t my-tomcat -f tomcat.Dockerfile . ```
    
    - Create Docker Image (Data Volume) with [```hello world```](https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war) application for Tomcat ([application.Dockerfile](application.Dockerfile))
    
    ``` docker build -t my-app -f application.Dockerfile . ```
    
    - Run these Images so that [http://localhost/sample](http://localhost/sample) shows ```hello world``` page
    ```
    docker run -d --name my-appvol my-app
    docker run -d --volumes-from my-appvol --name tomcat my-tomcat
    docker run -d -p 127.0.0.1:80:80 --link tomcat:tomcat my-nginx
    ```
    
    - ```Nginx``` container forwards http requests to ```Tomcat``` container; Only ```nginx``` container exposes port (80)
2. With ```docker-compose```:
    - Create ```docker-compose.yml``` file to build containers from previos task
    - Run "environment" in daemon mode
3. Create own branch (epam login without @epam.com, in lowercase)
4. Create PR with description of reported task
6. All needed resources (if they are) must be placed into ```/resources``` folder

## docker-compose.yml
```
version: '2'
services:
 my-app:
    build:
      context: .
      dockerfile: App/application.Dockerfile
    command: sleep infinity
 my-tomcat:
    build:
      context: .
      dockerfile: Tomcat/tomcat.Dockerfile
    command: /usr/libexec/tomcat/server start
    depends_on: [ "my-app" ]
    volumes_from: [ "my-app" ]
 my-nginx:
    build:
      context: .
      dockerfile: nginx/web.Dockerfile
    command: ["nginx", "-g", "daemon off;"]
    depends_on: [ "my-tomcat" ]
    expose: [ "80" ]
    ports: [ "127.0.0.1:80:80" ]
```

## tomcat.Dockerfile
```
FROM sbeliakou/centos:7.2
RUN rpm --rebuilddb; yum install -y tomcat tomcat-webapps
CMD /usr/libexec/tomcat/server start
```

## web.Dockerfile
```
FROM sbeliakou/centos:7.2
RUN yum -y install nginx
RUN sed -i '/location \/ {/s//location \/ { proxy_pass http:\/\/tomcat:8080;/'  /etc/nginx/nginx.conf
EXPOSE 80
CMD nginx -g 'daemon off;'
```

## application.Dockerfile
```
FROM sbeliakou/centos:7.2
VOLUME /var/lib/tomcat/webapps/
ADD sample.war /var/lib/tomcat/webapps/
CMD sleep infinity
```
