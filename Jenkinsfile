pipeline {
    agent any

    environment {
        DOCKERHUB_CREDENTIALS = credentials('docker-creds')
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Docker Build') {
            steps {
                script{
                    sh 'docker build -t vkunal/demo:latest .'
                }
            }
        }

        stage('Run Container') {
            steps {
                // Run the Docker container
                script {
                    docker.image('vkunal/demo:latest').run('-dp 8080:80')
                }
            }
        }
    }
}