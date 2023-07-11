pipeline {
    agent any

    options{
        buildDiscarder(logRotator(numToKeepStr: '5', daysToKeepStr: '5'))
        timestamps()
    }
    environment{
        
        registry = "vkunal/aws-app"
        registryCredential = 'dockerhub' 
        commitHash = sh(returnStdout: true, script: 'git rev-parse --short HEAD').trim()
       
    }

    stages {

        stage('Build Docker Image') {
            steps {
                script{
                    sh "sudo docker build -t ${registry}:${commitHash} ."

                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script{
                    sh "sudo docker run -dp 3000:3000 ${registry}:${commitHash}"

                }
            }
        }
        stage('Push to DockerHub') {
            steps {
                script{
                    docker.withRegistry( 'https://index.docker.io/v1/', registryCredential) {
                        sh "docker push ${registry}:${commitHash}"
                    }

                }
            }
        }
    }
}
