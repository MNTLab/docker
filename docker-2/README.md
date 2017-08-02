# Task:
1. Create custom ansible (v2.2.1) image
2. Launch Jenkins from [official image](https://hub.docker.com/_/jenkins/)
3. Link Docker Host as Jenknis slave (ssh)
4. Create custom gradle image
5. Configure a job to build [spring-boot application](https://spring.io/guides/gs/spring-boot/) using gradle image buit in 3
6. Configure a job to run just built Spring Boot app with docker-compose


- Host is connected as slave(master executors number is set to 0, to force running all jobs on the host node)
<img src="docker-2/pictures/Screenshot from 2017-08-02 12-53-47.png">

- Job is running succesfully
<img src="docker-2/pictures/Screenshot from 2017-08-02 12-42-27.png">

- Docker containers status
<img src="docker-2/pictures/Screenshot from 2017-08-02 12-43-07.png">

- Spring boot app is running
<img src="docker-2/pictures/Screenshot from 2017-08-02 09-21-12.png">
