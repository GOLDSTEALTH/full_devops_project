pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "flask-hello-world"
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Lint') {
            steps {
                // Install flake8 and run lint
                sh 'pip3 install flake8'
                sh 'flake8 flask_project.py'
            }
        }
        stage('Test') {
            steps {
                // Install pytest and run tests
                sh 'pip3 install pytest'
                sh 'pytest flask_project.py'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build(env.DOCKER_IMAGE)
                }
            }
        }
        stage('Push Docker Image') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', 'docker-hub-credentials') {
                        docker.image(env.DOCKER_IMAGE).push("latest")
                    }
                }
            }
        }
    }
    post {
        always {
            echo 'Pipeline finished.'
        }
        success {
            echo 'Pipeline succeeded!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}