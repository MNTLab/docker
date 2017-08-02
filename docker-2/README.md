# Task:
1. Create custom ansible (v2.2.1) image
2. Launch Jenkins from [official image](https://hub.docker.com/_/jenkins/)

<img src="pict/1.png">

3. Link Docker Host as Jenknis slave (ssh)

<img src="pict/3.png">

4. Create custom gradle image ([gradle.Dockerfile](gradle.Dockerfile))

<img src="pict/2.png">

5. Configure a job to build [spring-boot application](https://spring.io/guides/gs/spring-boot/) using gradle image buit in 3

<img src="pict/4.png">

6. Configure a job to run just built Spring Boot app with([docker-compose](docker-compose.yml))


<img src="pict/5.png">


