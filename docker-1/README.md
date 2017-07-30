MTN.*NIX.11 Automated Environment Configuration Management
---

***Student***: Yury Shchanouski

Home Task
---

Using base docker image ***sbeliakou/centos:7.2***

1. Wiht ```Dockerfiles```:
    - Create Docker Image of ```nginx``` ([web.Dockerfile](/web.Dockerfile))
    - Create Docker Image of ```Tomcat 7``` ([tomcat.Dockerfile](/tomcat.Dockerfile))
    - Create Docker Image (Data Volume) with [```hello world```](https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war) application for Tomcat ([application.Dockerfile](application.Dockerfile))
    - Run these Images so that [http://localhost/sample](http://localhost/sample) shows ```hello world``` page
    - ```Nginx``` container forwards http requests to ```Tomcat``` container; Only ```nginx``` container exposes port (80)
2. With ```docker-compose```:
    - Create ```docker-compose.yml``` file to build containers from previos task
    - Run "environment" in daemon mode
3. Create own branch (epam login without @epam.com, in lowercase)
4. Create PR with description of reported task
6. All needed resources (if they are) must be placed into ```/resources``` folder

Task Report Notes
---
1. Wiht ```Dockerfiles```:
    - Create Docker Image of ```nginx``` ([web.Dockerfile](resources/nginx/web.Dockerfile))
#### Build command:
``` $ docker build -t app -f resources/nginx/web.Dockerfile resources/nginx/. ```

    - Create Docker Image of ```Tomcat 7``` ([tomcat.Dockerfile](resources/tomcat/tomcat.Dockerfile))
#### Build command:
``` $ docker build -t app -f resources/tomcat/tomcat.Dockerfile resources/tomcat/. ```

    - Create Docker Image (Data Volume) with [```hello world```](https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war) application for Tomcat ([application.Dockerfile](resources/datavolume/application.Dockerfile))
#### Build command:
``` $ docker build -t app -f resources/datavolume/application.Dockerfile resources/datavolume/. ```

    - Run these Images so that [http://localhost/sample](http://localhost/sample) shows ```hello world``` page
    - ```Nginx``` container forwards http requests to ```Tomcat``` container; Only ```nginx``` container exposes port (80)
#### Run commands:
```
# all commands should be run from docker-1 directory
$ docker run -d --name datavolume app
$ docker run -d --volumes-from datavolume --name tomcat tomcat
$ docker run -d -p 127.0.0.1:80:80 --link tomcat:tomcat --name web web
```

#### Results:
<img src="resources/01.png">
<img src="resources/02.png">
<img src="resources/03.png">
<img src="resources/04.png">

docker build -t app -f resources/datavolume/application.Dockerfile resources/datavolume/.


