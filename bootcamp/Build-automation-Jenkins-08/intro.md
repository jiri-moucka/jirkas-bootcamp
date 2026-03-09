# Jenkins
install on a dedicated server, has UI
something like azure devops

Needs to integrade with another tools
- git
- docker, nexus, aws
- etc..

## Installation
- directly on OS
- like a docker container
- needs 1GB RAM for it self, 4GB is ok.

```bash
 docker run -p 8080:8080 -p 50000:50000 -d -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts
```
- port 50000:50000 is for user iteraction

get the paswword: command from inside of docker container:
```bash
root@ubuntu-s-2vcpu-4gb-120gb-intel-fra1-01:~# docker exec -it 666  bash
jenkins@666a259d0628:/$ 
cat /var/jenkins_home/secrets/initialAdminPassword
```

user/psw: nana/nana
url: http://167.172.103.117:8080/

## UI
R roles
### Admin
- sets up jenkins cluster
- can create jobs
- can create users

### User - Developer - devops
Creating the acrtual jobs to run workflows


## Installing Build tools in Jenkins
can be done via UI or command line.

1. create a job to automte my app.
    - java app, run tests, build jar file
    - needs npn, 

### plugin for maven
to instal via command i have to inside a docker container like root user
```bash
docker exec -u 0 -it 666 bash   # -u 0: -u: user 0: root
cat /etc/issue                  # get OS distribution
apt install curl

curl -sL https://deb.nodesource.com/setup_20.x -o nodesource_setup.sh   # script for installing all commands for installing node.js and npn

bash nodesource_setup.sh  # exucute the script
apt install nodejs
node -v
npm -v

apt install npm
  #
```
#### Tools
for configuring building, testing, packaging tools

### Stage view plugin
shows the progress or each stage
https://plugins.jenkins.io/pipeline-stage-view/

http://167.172.103.117:8080/

plugins which installed via UI is installed in /var/jenkins_home/plugins/ nemed volume.

To let plugin appear in 'Tools' menu, first

**Link to the Git project used in this lecture:**
Starting code: https://gitlab.com/twn-devops-bootcamp/latest/08-jenkins/java-maven-app/-/tree/starting-code
Final code: https://gitlab.com/twn-devops-bootcamp/latest/08-jenkins/java-maven-app

# Docker commands in Jenkins
to add docker to jenkins steps:
 - install docker plugin
 - add docker as a volume to the jenkins container
```bash
docker run -p 8080:8080 -p 50000:50000 -d \
-v jenkins_home:/var/jenkins_home \
-v /var/run/docker.sock:/var/run/docker.sock jenkins/jenkins:lts
```

enable executing docker commands in jenkins:
```bash
docker exec -u 0 -it be bash
curl https://get.docker.com/ > dockerinstall && chmod 777 dockerinstall && ./dockerinstall
```
**docker.sock** file is a Unix socket file, used by the docker daemon to communicate with the docker client.
we neeed to add permision for the docker file in jenkins container.
```bash
ls -l /var/run/docker.sock
# file which needs permision
srw-rw---- 1 root 112 0 Mar  4 12:07 /var/run/docker.sock
chmod 666 /var/run/docker.sock  # 6 add read/write permission
srw-rw-rw- 1 root 112 0 Mar  4 12:07 /var/run/docker.sock
```

then login as Jinkins user
```bash
docker exec -it be bash
```
now i can run docker commands inside the jenkins container.
or I can add docker commands in Jekins UI jobs.

when i run docker build command, created docker images are available inside the jenkins container.

## Push to docker hub
- login to docker hub
- create a repo
- add credentials into jenkins
- run docker build command
- push the image to docker hub

### jenkins build
command field
```bash
docker build -t jirimoucka/nana-hub/demo-app:jma-1.0 .
docker login -u $USERNAME -p $PASSWORD    # cause warning
echo $PASSWORD | docker login -u $USERNAME --password-stdin    # best practise
docker push jirimoucka/nana-hub/demo-app:jma-1.0
```

## Push to nexus repo
if nexus is running on the HTTP schema, it must be set in jenkins the secure registry.
**daemon.json** - for insercire registry configuration for Linux
```bash
sudo nano /etc/docker/daemon.json
{
  "insecure-registries":["206.81.28.219:8083"]
}
systemctl restart docker    # restart docker kills all running ontainers
```

after restart I have reconfigure **docker.sock** file permision for jenkins
```bash
ls -l /var/run/docker.sock
srw-rw-rw- 1 root docker 0 Mar  4 12:07 /var/run/docker.sock
docker exec -u 0 -it <container_id> bash
chmod 666 /var/run/docker.sock
```

### Setup Jenkins for Nexus repo
1. add credential for nexus
2. the same steps as with docker hub

# Free stylejob
stand-alone jobs – build, release, pushing to repo
for UI setup.
Has limitation for modern CI/CD or Infra as code.




