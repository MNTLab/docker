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

Task Report Notes
---

  * Launching Jenkins from official image:  
	```docker run -d -p 8080:8080 -p 5000:5000 -v $PWD/jenkins_home:/var/jenkins_home --name=jenkins-master jenkins```  
  <img src="resources/2-0.png">  

  * Linking Docker Host as Jenkins slave:  
  <img src="resources/3-0.png">

  * Creating custom gradle image with [gradle.Dockerfile](gradle.Dockerfile):  
  ```docker build -t docker-gradle -f gradle.Dockerfile . ```   
  <img src="resources/4-0.png">  

  * Configuring a job to build [spring-boot application](https://spring.io/guides/gs/spring-boot/) with [Jenkinsfile](Jenkinsfile-build)
  <img src="resources/5-0.png">  
  <img src="resources/5-1.png">

  * Configuring a job to run just built Spring Boot app with docker-compose:  
    - install Copy Artifact Plugin  

    <img src="resources/6-0.png">

    - pipeline configuration:  

    <img src="resources/6-1.png">

    - jobs console output:  

    <img src="resources/6-2.png">  
    <img src="resources/6-3.png">  

    - check:  
    <img src="resources/6-4.png">
