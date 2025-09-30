pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "flask-hello-world"
    }

    stages {
        stage('Checkout') {
            steps {
                // Clone the repo Jenkins is connected to
                checkout scm
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build(env.DOCKER_IMAGE)
                }
            }
        }
        
    }
}