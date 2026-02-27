# intro
docker
virtualized application layer
it use machines's kernel
is faster than VM

VM image
has its own kernel and application layer
is compatible with all OS

## Docker architecture
![docker architecture](https://docs.docker.com/engine/images/architecture.svg)
docker 
- engine (server) - for pulling imgaed
- api - interaction with docker server
- cli  - for execute docker commands

### Dcoker server engine
volumes, network build images, pulling and managing containers

multiple containers with the same port: will not work properly
in local host must each container diferent port

## Debug docker container

```bash
docker exec -it <container_id> bash  #it is interactive
env # print enviroment variables
exit
```

## Docker network
isolated network for docker


## Docler compose
Run many docker containers at once.
```docker-compose
restart: always
```

## Docker file
`RUN` 
- can execute any linux command
- is executed in docker container
- 
`COPY` 
- execute it on the host
- copying from host to the container

`CMD`
 - part of docker
 - execute docker entry point
 - multi run

`WORDIR`
 - default working directory for container
 - any cmd will be run in this directory (set in below lines)



Alpine - lighwith LInux image
 - it has more inside docker file

# Login into Nexus repo
docker cannot use a path (url of repo)
configure a port for docker repo - must be diferent from the path.
```
docker login
```

the check if the port is open: `netstat -lnpt`
the to find port for docker store

then we need to access this port - open in firewall in droplet

then in nexus create a Realm
-> for authentication with the local machine
-> crete a token for comunication:
 - in nexus goto to Realm and activated 'Docker Bearer Token' 
 - for  sercure https communication
 - if only HTTP connection then:
   - in linux host machine edit /etc/docker/daemon.json file with :
   - in WSL - open docker desktop -> Docker engine
   ```json
    { "insecure-registries" : ["myregistrydimain.com:5000"] }
   ```
     then login from hostin or local machine (docker login 167.71.57.131:8083)
     nexus: { "insecure-registries" : ["167.71.57.131:8083"] }  #username: nana, psw: nana

### Push image into docker repo
Image naming convention:
`registryDomain/imageName:tag`
for nexus: docker pull 167.71.57.131:8083

me must 'tag' the image.
`docker tag productservice:1.0 167.71.57.131:8083/productservice:1.0`
then push
`docker push 167.71.57.131:8083/productservice:1.0`

### fetch docker image
`curl -u nana:nana -X GET '167.71.57.131:8081/service/rest/v1/components?repository=docker-hosted'`

## Doloy the app
add to the docker compose
```yaml
services:
  productservice:
    image: 167.71.57.131:8083/productservice:1.0
    ports:
      - "3000:3000"
    
```

# Docker volume
On a host is file system. 
From docker /home/mount/data -> to host file system

## 3 types of volumes
Host volume: docker run -v /home/mount/data:/data  # reference the host file system
Anonymous volume: docker run -v /data              # create a volume 
Named volume: docker run -v myvolume:/data         # reference the volume by the name
    - can be shared between containers

## Properties of volumes
- persistent data
- can be shared between containers
- can be mounted from host to container

### docker volume locations
win: C:\ProgramData\Docker\volumes
linux: /var/lib/docker/volumes/
mac: /var/lib/docker/volumes/

list of volumes: `cd /var/lib/docker`


# Nexus as docker container
```bash
apt update
snap install docker
```
default user: admin
**Get the password:** `docker exec -it nexus cat /nexus-data/admin.password`

in tags i am able to find the default user – in layers

# Docker best practices
1. use offical docker image
2. not use `latest` image tag
3. specify docker imge version
4. Operation system in docker image 
   - avoid, it tooks with vulnaberities 
   - use small size image
5. Caching - optimate
    - each docker command = docker layer
6. Excluding not needed content
    - use .dockerignore file
7. Build vs. final stage
    - dependency file for declaring wha tis need it for final
    - Multi-Stage builds
8. Which OS will be used to start the app?
    - not need it to run as a root user → bad practice
    - to user The Least privileged user → good practice
9. Scan
    - scan for vulnerabilities and security issues via docker scout.
    - use docker SCOUT;