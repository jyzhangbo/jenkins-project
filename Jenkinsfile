import javafx.stage.StageStyle

pipeline {
    agent any
    stages {
        stage("checkout code") {
            echo 'checkout code'
            checkout scm
        }

        stage("build") {
            echo 'build'
        }
    }

    post {
        always{
            echo 'post finish'
        }
    }
}