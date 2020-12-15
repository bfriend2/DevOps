pipeline {
  environment {
    registry = "docker/dockerdemo44/projectuno" 
    registryCredential = 'dockerhub'
    dockerImage = ''
  }
  agent {
    dockerfile true
  }
  stages {
    stage('Cloning Git') {
      steps{
        checkout scm
      }
    }
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry + "$BUILD_NUMBER"
        }
      }
    }
    stage('Deploy Image') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
  }
}
