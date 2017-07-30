MTN.*NIX.11 Automated Environment Configuration Management
---

***Student***: Pavel Yurchuk

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
    - Create Docker Image of ```nginx``` ([web.Dockerfile]https://github.com/PaulYurchuk/docker/blob/pavel_yurchuk/docker-1/web.Dockerfile))
    <img src="resources/pictures/Screen Shot 2017-07-30 at 20.26.53.png">
    <img src="resources/pictures/Screen Shot 2017-07-30 at 20.26.26.png">
    
    - Create Docker Image of ```Tomcat 7``` ([tomcat.Dockerfile]https://github.com/PaulYurchuk/docker/blob/pavel_yurchuk/docker-1/tomcat.Dockerfile))
    <img src="resources/pictures/Screen Shot 2017-07-30 at 21.05.12.png">
    <img src="resources/pictures/Screen Shot 2017-07-30 at 20.50.04.png">
    
    - Create Docker Image (Data Volume) with [```hello world```](https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war) application for Tomcat ([application.Dockerfile]https://github.com/PaulYurchuk/docker/blob/pavel_yurchuk/docker-1/application.Dockerfile))
    <img src="resources/pictures/Screen Shot 2017-07-30 at 21.18.12.png">
    
    - Run these Images so that [http://localhost/sample](http://localhost/sample) shows ```hello world``` page
    <img src="resources/pictures/Screen Shot 2017-07-30 at 21.19.10.png">
    
    - ```Nginx``` container forwards http requests to ```Tomcat``` container; Only ```nginx``` container exposes port (80)
    <img src="resources/pictures/Screen Shot 2017-07-30 at 21.17.26.png">
    
    2. With ```docker-compose```:
    - Create ```docker-compose.yml``` file to build containers from previos task
    - Run "environment" in daemon mode
    
