pipeline {
    agent any

    stages {
        stage('Checkout Git') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                def customImage = docker.build("nodejs-app:${env.BUILD_ID}")
            }
        }
        stage('Start Container'){
            steps{
                sh "sudo docker run -dp 3000:3000 ${customImage}"
            }
        }
        stage('Push to DockerHub') {
           docker.withRegistry('https://hub.docker.com/', 'dockerhub'){
                customImage.push()
           }
        }
    }
}
