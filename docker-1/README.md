MTN.*NIX.11 Automated Environment Configuration Management
---

***Student***: Aleh_Tsuranau

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
    - Create ```docker-compose.yml``` file to build containers from previos task([docker-compose.yml](docker-compose.yml))
    - Run "environment" in daemon mode
3. Create own branch (epam login without @epam.com, in lowercase)
4. Create PR with description of reported task
6. All needed resources (if they are) must be placed into ```/resources``` folder

Task Report Notes
---
- Building images & running containers:
<img src="resources/Screenshot from 2017-07-31 01-05-11.png">
<img src="resources/Screenshot from 2017-07-31 01-06-56.png">
<img src="resources/Screenshot from 2017-07-31 01-09-01.png">
<img src="resources/Screenshot from 2017-07-31 01-11-54.png">
<img src="resources/Screenshot from 2017-07-31 01-17-19.png">
<img src="resources/Screenshot from 2017-07-31 01-32-49.png">

- Using ```docker-compose```:
<img src="resources/Screenshot from 2017-07-31 01-41-57.png">
<img src="resources/Screenshot from 2017-07-31 01-44-16.png">
