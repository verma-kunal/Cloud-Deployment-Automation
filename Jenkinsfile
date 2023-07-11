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
                    sh 'sudo docker build -t vkunal/aws-app .'
                }
            }
        }

        stage('Start Container'){
            steps{
                script{
                    sh "sudo docker run -dp 3000:3000 vkunal/aws-app:latest"
                }
            }
        }
        // stage('Push to DockerHub') {
        //    steps {
        //         script{
        //             docker.withRegistry('https://hub.docker.com/', 'dockerhub'){
        //                 customImage.push()
        //             }
        //         }
        //    }
        // }
    }
}
