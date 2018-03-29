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
        sh 'mvn clean package'
      }
    }
    stage('devlop') {
      steps {
        echo 'devlop'

        script{
          def customImage = docker.build("jenkins-project:${env.BRANCH_NAME}")
          customImage.push()
        }
      }
    }
  }
}