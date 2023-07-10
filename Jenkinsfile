pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build and Push Docker Image') {
            steps {
                script {
                    def dockerImage = docker.build('vkunal/aws-app:${env.BUILD_NUMBER}')
                    docker.withRegistry('https://hub.docker.com/', 'dockerhub') {
                        dockerImage.push()
                    }
                }
            }
        }

        stage('Pull and Run Docker Image') {
            steps {
                script {
                    docker.withRegistry('https://hub.docker.com/', 'dockerhub') {
                        def dockerImage = docker.image('vkunal/aws-app:${env.BUILD_NUMBER}')
                        dockerImage.pull()
                        dockerImage.run('-dp 3000:3000')
                    }
                }
            }
    }
}
