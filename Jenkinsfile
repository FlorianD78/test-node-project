pipeline {
  environment {
  dockerImage = ''
  dockerName = 'calculator'
  }
  agent any
  stages {
    stage('Cloning our Git') {
      steps {
      git 'https://github.com/FlorianD78/test-node-project.git'
      }
    }
    stage('Building our image') {
      steps{
        script {
          dockerImage = docker.build dockerName + ":$BUILD_NUMBER"
        }
      }
    }
  }
}
