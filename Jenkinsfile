pipeline {
  agent {
    dockerfile true
  }
  stages {
    stage('Hello') {
      steps {
        echo 'Hello World!'
        sh 'echo myVar = $myVar'
      }
    }
  }
}
