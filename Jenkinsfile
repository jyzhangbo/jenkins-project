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
                sh 'mv target/jenkins-project-0.0.1-SNAPSHOT.jar docker/bin'
                script{
                    def customImage = docker.build("zhangbo/jenkins-project:${env.BRANCH_NAME}","./docker")
                    customImage.push()
                }
            }
        }
    }
}