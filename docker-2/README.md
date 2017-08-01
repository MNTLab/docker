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

### Launch Jenkins from official image

- in the [docker-compose.yml](docker-compose.yml)

### Link Docker Host as Jenknis slave (ssh)
<img src="resources/Screenshot from 2017-08-01 02-48-49app-docker-compose.yml.png">

### Create custom gradle image
- in the [gradle.Dockerfile](gradle.Dockerfile)

### Configure a job to build spring-boot application using gradle image buit in 3
### And configure a job to run just built Spring Boot app with docker-compose

- achived with help of [Jenkinsfile](Jenkinsfile),[app.Dockerfile](app.Dockerfile),[app-docker-compose.yml](app-docker-compose.yml)

<img src="resources/Screenshot from 2017-08-01 02-59-51.png">
<img src="resources/Screenshot from 2017-08-01 03-00-03.png">
<img src="resources/Screenshot from 2017-08-01 03-00-20.png">
<img src="resources/Screenshot from 2017-08-01 03-00-29.png">
<img src="resources/Screenshot from 2017-08-01 03-01-47.png">
<img src="resources/Screenshot from 2017-08-01 03-02-04.png">

