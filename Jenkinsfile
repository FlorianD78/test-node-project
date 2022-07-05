pipeline {
  environment {
  dockerImage = ''
  dockerName = 'calculator'
  }
  agent any
  stages {
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build dockerName + ":$BUILD_NUMBER"
        }
      }
    }
  }
}
