#!groovy
pipeline {
    agent any

    stages {
        stage('Cleanup') {
            steps {
                echo 'Cleaning up existing Containers and Images'
                sh 'docker rm -f $(docker ps -aq) || true'
                sh 'docker rmi -f $(docker images -q) || true'
                
            }
        }
        stage('Build') {
            steps {
                sh 'docker network create nodenetwork || true'
                sh 'docker build -t node-image .'
            }
        }
        stage('Run') {
            steps {
                sh 'docker run -d --name node-app --network nodenetwork -p 5000:5000 node-image'
            }
        }
    }
}
