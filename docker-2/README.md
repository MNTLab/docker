# Task:
1. Create custom ansible (v2.2.1) image
2. Launch Jenkins from [official image](https://github.com/jenkinsci/docker)
-docker run -p 8080:8080 -p 50000:50000 -d -v /home/student/PycharmProjects/docker/docker-2/FOR_JENKINS:/var/jenkins_home jenkins/jenkins:2.60.2 
<img src="resources/Screenshot from 2017-08-05 13-10-55.png">
3. Link Docker Host as Jenknis slave (ssh)
<img src="resources/Screenshot from 2017-08-05 13-13-54.png">
4. Create custom gradle image
<img src="resources/Screenshot from 2017-08-05 13-15-02.png">
5. Configure a job to build [spring-boot application](https://spring.io/guides/gs/spring-boot/) using gradle image buit in 3
<img src="resources/Screenshot from 2017-08-05 13-15-57.png">
6. Configure a job to run just built Spring Boot app with docker-compose
<img src="resources/Screenshot from 2017-08-05 13-17-27.png">

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
