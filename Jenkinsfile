pipeline {
  environment {
  dockerImage = ''
  dockerName = 'calculator'
  }
  agent any
  stages {
    stage('Test command') {
      steps{
        script {
          sh 'ls'          
          echo '++++++++++++++ Test PASS ++++++++++++++'
        }
      }
    }
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build dockerName + ":$BUILD_NUMBER"
        }
      }
    }
  }
}
