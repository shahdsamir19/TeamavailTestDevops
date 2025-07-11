pipeline {
    agent any

    environment {
        IMAGE_NAME = "team-availability-app"
    }

    stages {
        stage('Install Dependencies') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Lint & Test') {
            steps {
                echo 'Skipping lint and tests for now (can be added later)'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh "terraform plan"
            }
        }

        stage('Run Docker Compose') {
            steps {
                sh 'terraform apply'
                #sh 'docker-compose up -d'
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished!'
        }
    }
}
