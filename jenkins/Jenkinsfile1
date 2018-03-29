pipeline {
  agent {
    label 'master'
  }
  stages {
    stage('Checkout') {
      steps {
        echo 'Checkout'
      }
    }
    stage('Build') {
      steps {
        echo 'Building'
        input(message: 'continue?', id: 'test11', ok: 'continue')
      }
    }
  }
}