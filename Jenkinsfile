pipeline {
  environment {
    registry = "https://hub.docker.com/repository/docker/dockerdemo44/projectuno" 
    registryCredential = 'dockerhub'
    dockerImage = ''
  }
  agent any
  stages {
    stage('Cloning Git') {
      checkout scm
    }
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build("dockerdemo44/projectuno")
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
