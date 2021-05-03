pipeline {
    agent any;
    stages {
      stage('Test') {
        agent {
          docker {
            image 'node:lts-alpine3.10' 
            args '-p 3000:3000 -u root:root'
          }
        }
        steps {
          sh 'rm -rf cibersec-node-docker-jenkins-deploy'
          sh 'apk add --no-cache git'
          sh 'git clone https://github.com/pukup/node-hola/'
          dir("node-hola") {
              sh "npm install"
          }
          dir("node-hola") {
            sh "npm run test"
          }
        }
      }
      stage('Deploy') { 
        steps {
          dir("node-hola") {
            sh 'docker build -t nodejs-production .'
            sh 'docker run -d -p 3100:3000 --name nodejs-production nodejs-production'
          }
        }
      }
    }
}
