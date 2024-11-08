pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/sammed-18/simple-app.git'  // Your repo URL
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Build Docker image
                    sh 'docker build -t sammed18/simple-app .'
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    // Log in to Docker Hub
                    withCredentials([usernamePassword(credentialsId: 'dockerhub-credentials', passwordVariable: 'DOCKER_PASSWORD', usernameVariable: 'DOCKER_USERNAME')]) {
                        sh 'echo $DOCKER_PASSWORD | docker login -u $DOCKER_USERNAME --password-stdin'
                    }
                    // Push the Docker image to Docker Hub
                    sh 'docker push sammed18/simple-app'
                }
            }
        }
    }
}
