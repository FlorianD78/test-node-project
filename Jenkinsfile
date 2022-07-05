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
          sh 'sudo docker build -t' + dockerName + ":$BUILD_NUMBER" '.'
        }
      }
    }
  }
}
