pipeline {
    agent any

    options{
        buildDiscarder(logRotator(numToKeepStr: '5', daysToKeepStr: '5'))
        timestamps()
    }
    environment{
        
        registry = "vkunal/aws-app"
        registryCredential = 'dockerhub'        
    }

    stages {
        stage('Checkout Git') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                script{
                    dockerImage = docker.build registry + ":$BUILD_NUMBER"
                }
            }
        }

        // stage('Start Container'){
        //     steps{
        //         script{
        //             sh "sudo docker run -dp 3000:3000 --name aws-nodejs vkunal/aws-app:${env.BUILD_ID}"
        //         }
        //     }
        // }
        // stage('Login & Push to DockerHub') {
        //    steps {
        //         script {
        //             withDockerRegistry([credentialsId: 'dockerhub', url: 'https://hub.docker.com/']) {
        //                 sh "docker login"
        //             }
        //             sh "docker push vkunal/aws-app:${env.BUILD_ID}"
        //         }
        //     }
        // }
    }
}
