MTN.*NIX.11 Automated Environment Configuration Management
---

***Student***: Vitali Ulantsau

Home Task
---

Using base docker image ***sbeliakou/centos:7.2***

1. Wiht ```Dockerfiles```:
    - Create Docker Image of ```nginx``` ([web.Dockerfile](web.Dockerfile))
    - Create Docker Image of ```Tomcat 7``` ([tomcat.Dockerfile](tomcat.Dockerfile))
    - Create Docker Image (Data Volume) with [```hello world```](https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war) application for Tomcat ([application.Dockerfile](application.Dockerfile))
    - Run these Images so that [http://localhost/sample](http://localhost/sample) shows ```hello world``` page
    - ```Nginx``` container forwards http requests to ```Tomcat``` container; Only ```nginx``` container exposes port (80)
2. With ```docker-compose```:
    - Create ```docker-compose.yml``` ([docker-compose.yml](docker-compose.yml))file to build containers from previos task
    - Run "environment" in daemon mode
3. Create own branch (epam login without @epam.com, in lowercase)
4. Create PR with description of reported task
6. All needed resources (if they are) must be placed into ```/resources``` folder

Task Report Notes
---

- Sample application is deployed, environment has been created using Dockerfiles
<img src="resources/pictures/Screenshot from 2017-07-30 16-44-24.png">

- Run commands parameters
<img src="resources/pictures/Screenshot from 2017-07-30 16-49-16.png">

- Sample application is deployed, environment has been created using Docker-compose
<img src="resources/pictures/Screenshot from 2017-07-30 17-25-09.png">

