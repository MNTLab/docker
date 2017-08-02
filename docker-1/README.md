MTN.*NIX.11 Automated Environment Configuration Management
---

***Student***: __Vadzim Tarasiuk__

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
*All stuff must be provided in this section
1. Wiht ```Dockerfiles```:

 * Create Docker Image of ```nginx``` ([web.Dockerfile](resources/web/web.Dockerfile))
<img src="resources/img/1-3.png">

 * Create Docker Image of ```Tomcat 7``` ([tomcat.Dockerfile](resources/tomcat/tomcat.Dockerfile))
<img src="resources/img/1-2.png">

 * Create Docker Image (Data Volume) with [```hello world```](https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war) application for Tomcat ([application.Dockerfile](resources/datavolume/application.Dockerfile))
<img src="resources/img/1-6.png">

* Run these Images so that [http://localhost/sample](http://localhost/sample) shows ```hello world``` page
* ```Nginx``` container forwards http requests to ```Tomcat``` container; Only ```nginx``` container exposes port (80)
<img src="resources/img/1-1.png">
<img src="resources/img/1-7.png">

2. With ```docker-compose```:
   - Create ```docker-compose.yml``` file [docker-compose.yml](resources/docker-compose.yml) to build containers from previos task
   - Run "environment" in daemon mode

<img src="resources/img/2-1.png">
<img src="resources/img/2-2.png">
