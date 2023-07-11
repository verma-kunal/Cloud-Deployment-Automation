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
                    sh "sudo docker build -t vkunal/aws-app:${env.BUILD_ID} ."
                }
            }
        }

        stage('Start Container'){
            steps{
                script{
                    sh "sudo docker run -dp 3000:3000 vkunal/aws-app:${env.BUILD_ID}"
                }
            }
        }
        stage('Login & Push to DockerHub') {
           steps {
                script{
                    docker.withRegistry('https://hub.docker.com/', 'dockerhub'){
                        sh "docker push vkunal/aws-app:${env.BUILD_ID}"
                    }
                }
            }
        }
    }
}
