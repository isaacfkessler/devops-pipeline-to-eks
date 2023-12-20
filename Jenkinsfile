pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY = credentials('AWS_ACCESS_KEY')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        region = "us-east-1"
    }
    stages {
        stage('Initializing Terraform ') {
            steps {
                dir('eks') {
                    sh 'terraform init'
                }
            }
        }
    }
}