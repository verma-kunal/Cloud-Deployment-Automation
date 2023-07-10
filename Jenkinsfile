pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t aws-app .'
                }
            }
        }

        stage('Run Docker Image') {
            steps {
                script {
                    sh 'docker run -dp 3000:3000 aws-app:latest'
                }
            }
        }
    }
}
