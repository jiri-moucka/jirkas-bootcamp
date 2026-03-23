Link to the project used in this lecture:

Starting-code: https://gitlab.com/twn-devops-bootcamp/latest/08-jenkins/jenkins-shared-library/-/tree/starting-code
Final code: https://gitlab.com/twn-devops-bootcamp/latest/08-jenkins/jenkins-shared-library

# ehat is Jenkins shared library
e.g., workin on a microservices project
it is extension in jenkins. 
it has its own repositroy

use for sharing e.g. groovy file for more then 1 project - build

# make repostory globbaly available in Jenkins
repo: https://gitlab.com/nana-jirka/jenkins-shared-library.git

## use jenkins shared library in jenkinsfile

### Parameters
the parameters coudl be passed from jenkins.
in file buildImage.groovy:
```groovy
def call(String imageName) {
    echo "building the docker image..."
    withCredentials([usernamePassword(credentialsId: 'docker-hub-repo', passwordVariable: 'PASS', usernameVariable: 'USER')]) {
        sh 'docker build -t $imageName .'
        sh 'echo $PASS | docker login -u $USER --password-stdin'
        sh 'docker push $imageName '

    }
}
```

then Jenkisfile will looks like:
```Jenkins
stage("build image") {
	steps {
		script {
			buildImage 'nanatwn/demo-app:jma-3.0'
		}
	}
}
```

### Groovy Classes
script - hold all info from pipeline
