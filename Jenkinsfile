pipeline {
    agent {
        label 'master'
    }
    stages {
        stage('Checkout') {
            steps {
                echo 'Checkout'
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'd9a46baa-822d-43b0-a61f-82f66b8455f8', url: 'https://github.com/jyzhangbo/jenkins-project.git']]])
            }
        }
        stage('Build') {
            steps {
                echo 'Building'
                sh 'mvn clean package -Dmaven.test.skip=true findbugs:findbugs'
            }
        }
    }
}