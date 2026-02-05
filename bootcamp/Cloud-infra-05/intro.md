# IaaS - Infra as a Service

Delegation of infrastructure management to cloud providers or sometbody else.
providers - aws, google, digital ocean, azure.

## Digital ocean

SSH key from my local machine: `cat ~/.ssh/id_rsa.pub`

- default ports - publicly accessible all ports
    - must manually set poublic ports

Firewall rules:

- Inbound rules – means allowing incoming requests
- Outbound rules – which destination will our app talk to.

login: `ssh root@207.154.225.132` - not need to use password, because of the ssh key.

## Build Java project

https://gitlab.com/twn-devops-bootcamp/latest/05-cloud/java-react-example

steps:

- build JAR file locally
- Copy to ocean remote server
- run app
- acces from the browser

1. local build

- clone repo
- open PowerShell terminal and run `gradle build`
- this file `build/libs/java-react-example.jar` we want to run in remote server
    - path: `scp java-react-example.jar root@207.154.225.132:/root`
- start the app: `root@ubuntu-s-1vcpu-512mb-10gb-fra1-01:~# java -jar java-react-example.jar` - run in atach mode ( if i
  stopp the terminal the app will stop)
- to run continuasly: `java -jar java-react-example.jar &`
- access app from browser:
    - the port is 7071
    - goto: DigitalOcean -> Networking -> Firewall -> my-droplet-fiewall
    - add new rule: `Custom - TCP - 7071 - AllIPv4 AllIPv6`
    - then goto to the browser and type into the address bar: 207.154.225.132:7071
    - see the app running.
        - check by :
            - `ps aux | grep java`
            - `netstat -tulpn` - check where the app is listennig and what port.
              Result:
              look at the porcces ID **3106**

```bash
root@ubuntu-s-1vcpu-512mb-10gb-fra1-01:~# ps aux | grep java
root        3106  8.7 29.9 2230444 140408 pts/1  Sl   10:27   0:11 java -jar java-react-example.jar

root@ubuntu-s-1vcpu-512mb-10gb-fra1-01:~# netstat -tulpn
Active Internet connections (only servers)
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name                 
tcp6       0      0 :::7071                 :::*                    LISTEN      3106/java           
```

## Create and configure a Linux user on a cloud server

**Bad** practise to use root user for app run

**Best practise**:

- create a separate user for every application – e.g. user Teamtime user, nginx user, etc. and those users will host
  application only for Teamtime or nginx app.
- Give to the user only the permission it needs to run that app
  Steps:

```bash
adduser nana # psw is nana
usermod -aG sudo nana  # give sudo rights to the user
su - nana
```

login via ssh as nana user:
login as root user:

```bash
mkdir .ssh
sudo nano .ssh/authorized_keys  # paste the public key from my local machine
ssh nana@207.154.225.132
```

