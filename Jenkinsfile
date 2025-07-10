pipeline {
    agent any

    environment {
        IMAGE_NAME = "team-availability-app"
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/shahdsamir19/TeamavailTestDevops.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }

        stage('Lint & Test') {
            steps {
                echo 'Skipping lint and tests for now (can be added later)'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh "docker build -t ${IMAGE_NAME} ."
            }
        }

        stage('Run Docker Compose') {
            steps {
                sh 'docker-compose down || true'
                sh 'docker-compose up -d'
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished!'
        }
    }
}
