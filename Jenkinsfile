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
                    def customImage = docker.build("nodejs-app:${env.BUILD_ID}")

                }
            }
        }
    }
}
