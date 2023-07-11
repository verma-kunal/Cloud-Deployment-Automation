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
                script{
                    def customImage = docker.build("nodejs-app:${env.BUILD_ID}")
                }
            }
        }

        stage('Start Container'){
            steps{
                script{
                    sh "sudo docker run -dp 3000:3000 ${customImage}"
                }
            }
        }
        stage('Push to DockerHub') {
           steps {
                script{
                    docker.withRegistry('https://hub.docker.com/', 'dockerhub'){
                        customImage.push()
                    }
                }
           }
        }
    }
}
