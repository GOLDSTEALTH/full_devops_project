pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Lint') {
            steps {
                sh 'echo "Lint stage: pretend to run flake8"'
            }
        }
        stage('Test') {
            steps {
                sh 'echo "Test stage: pretend to run pytest"'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'echo "Build stage: pretend to build Docker image"'
            }
        }
        stage('Push Docker Image') {
            steps {
                sh 'echo "Push stage: pretend to push Docker image"'
            }
        }
    }
    post {
        always { echo 'Pipeline finished.' }
        success { echo 'Pipeline succeeded!' }
        failure { echo 'Pipeline failed!' }
    }
}