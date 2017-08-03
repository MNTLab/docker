# Task:
1. Create custom ansible (v2.2.1) image
2. Launch Jenkins from [official image](https://hub.docker.com/_/jenkins/)
3. Link Docker Host as Jenknis slave (ssh)
4. Create custom gradle image
5. Configure a job to build [spring-boot application](https://spring.io/guides/gs/spring-boot/) using gradle image buit in 3
6. Configure a job to run just built Spring Boot app with docker-compose



### Example of usage docker to isolate toolset with its dependencies:

```
# what version?
$ docker run --rm sbeliakou/ansible:2.2.1 ansible --version

# run playbook from current dir
$ alias ansible-playbook='docker run --rm -v $(pwd):$(pwd) -w $(pwd) sbeliakou/ansible:2.2.1 ansible-playbook -vv'
$ ansible-playbook playbook.yml
```

### Using Docker in Jenkinsfile
[Jenkins Docker Pipeline plugin](https://go.cloudbees.com/docs/cloudbees-documentation/cje-user-guide/index.html#docker-workflow)

```
  stage('Run Tests') {
    try {
      dir('webapp') {
        sh "mvn test"
        docker.build("sbeliakou/my_container:${env.BUILD_NUMBER}").push()
      }
    } catch (error) {

    } finally {
      junit '**/target/surefire-reports/*.xml'
    }
  }
```

### Dockerized Zabbix
[Solution](https://www.zabbix.org/wiki/Dockerized_Zabbix)

# Result:
1. Create custom ansible (v2.2.1) image
2. Launch Jenkins from [official image](https://hub.docker.com/_/jenkins/)

<img src="pictures/Screenshot from 2017-07-31 19-08-43.png">

3. Link Docker Host as Jenknis slave (ssh)

<img src="pictures/Screen Shot 2017-08-01 at 23.18.55.png">

<img src="pictures/Screen Shot 2017-08-01 at 23.20.55.png">

4. Create custom gradle [image](https://github.com/PaulYurchuk/docker/blob/pavel_yurchuk_day2/docker-2/gradle.Dockerfile)

5. Configure a job to build [spring-boot application](https://spring.io/guides/gs/spring-boot/) using gradle [image](https://github.com/PaulYurchuk/docker/blob/pavel_yurchuk_day2/docker-2/build.gradle) buit in 3

<img src="pictures/Screenshot from 2017-08-02 09-05-51.png">

<img src="pictures/Screenshot from 2017-08-02 09-05-39.png">

6. Configure a job to run just built Spring Boot app with [docker-compose](https://github.com/PaulYurchuk/docker/blob/pavel_yurchuk_day2/docker-2/docker-compose.yml),[deploy](https://github.com/PaulYurchuk/docker/blob/pavel_yurchuk_day2/docker-2/jar.Dockerfile)

<img src="pictures/Screenshot from 2017-08-02 09-05-59.png">
