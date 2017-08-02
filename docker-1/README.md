MTN.*NIX.11 Automated Environment Configuration Management
---

***Student***: Artsiom Aksionkin

Home Task
---

Using base docker image ***sbeliakou/centos:7.2***

1. With ```Dockerfiles```:
    - Create Docker Image of ```nginx``` ([web.Dockerfile](/web.Dockerfile))
<img src="resources/Screenshot from 2017-07-31 14-08-50.png">    
    - Create Docker Image of ```Tomcat 7``` ([tomcat.Dockerfile](/tomcat.Dockerfile))
<img src="resources/Screenshot from 2017-07-31 14-05-21.png">     
    - Create Docker Image (Data Volume) with [```hello world```](https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war) application for Tomcat ([application.Dockerfile](application.Dockerfile))
<img src="resources/Screenshot from 2017-07-31 13-59-15.png">    
    - Run these Images so that [http://localhost/sample](http://localhost/sample) shows ```hello world``` page
    - ```Nginx``` container forwards http requests to ```Tomcat``` container; Only ```nginx``` container exposes port (80)
<img src="resources/Screenshot from 2017-07-31 14-35-55.png">
2. With ```docker-compose```:
    - Create ```docker-compose.yml``` file to build containers from previous task
    - Run "environment" in daemon mode
    $ docker-compose up -d
<img src="resources/Screenshot from 2017-07-31 15-03-02.png">
<img src="resources/Screenshot from 2017-07-31 15-04-37.png">
3. Create own branch (epam login without @epam.com, in lowercase)
4. Create PR with description of reported task
6. All needed resources (if they are) must be placed into ```/resources``` folder

Task Report Notes
---
*All stuff must be provided in this section
