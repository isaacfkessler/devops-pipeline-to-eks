pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
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

        stage('Terraform Validate') {
            steps {
                dir('eks') {
                    sh 'terraform fmt'
                }
            }
        }

        stage('Terraform (Plan)') {
            steps {
                dir('eks') {
                    sh 'terraform plan'
                }
            }
        }        
    }
}
