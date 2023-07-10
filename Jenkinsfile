pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                // Checkout the repository
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                // Build a new Docker image with the changes
                script {
                    docker.withRegistry('https://hub.docker.com/', 'docker-creds') {
                        def customImage = docker.build('nodejs-app')
                        customImage.push('latest')
                    }
                }
            }
        }

        stage('Run Container') {
            steps {
                // Run the Docker container on a specific port
                script {
                    docker.image('nodejs-app:latest').run('-p 8080:8080')
                }
            }
        }
    }
}