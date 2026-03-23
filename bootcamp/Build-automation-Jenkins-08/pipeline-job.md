# Pipeline Job
Suitable for CI/CD
Scripting as code CI/CD

Pipeline script from SCM - source code management

script is written in groovy - (style like Java)
User Groovy Sandobox - can be wriiteer some simple groove script without admin rights

1. connect to git repo

## Jenkins file
### Scripted
 - first syntaxt
 - groovy engine
 - difficult to start

### Declarative
 - second syntax
 - declarative engine
 - easy to start
 - not to powerful as scripted

## Pipeline jobs
- parrallel jobs
- nedd user input
- conditional statement

# Jenkins variables
url: http://167.172.103.117:8080/env-vars.html/

## own variables

## Jenkins credentials
needs plugin 'Credential binding'
```jenkins
SERVER_CREDENTIALS = credentials('')
```
credentials is a method - find a credentials in jenkins

## Jenkins file tools
has to be install in Jenkins tool
it will be available its commands in all jobs
```jenkins
tools {
		maven "maven-3.9"
		gradle
		jdk
	}
```

# Using external Groovy script
can have bash, Gradle scripts

Create a separate Groovy script
Groovy script can be written iside the Jenkinsfile
all variable define in Jenkinsfile are available in Groovy script

# Input parameters
e.g. - enable to user to which environment it should be deployed.

# Full Pipeline
