pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_DEFAULT_REGION = "us-east-1"
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

        stage('Terraform Preview Infrastructure') {
            steps {
                dir('eks') {
                    sh 'terraform plan'
                }
                input(message: "Are you sure to proceed?" , ok: "Yes, approved")
            }
        }        

        stage('Creating Infrastructure on AWS') {
            steps {
                dir('eks') {
                    sh 'terraform apply --auto-approve'
                }
            }
        }

        stage('Deploy OdooCRM') {
            steps {
                dir('eks') {
                    sh 'aws eks update-kubeconfig --name odoocrm'
                    sh 'helm repo add bitnami https://charts.bitnami.com/bitnami'
                    sh 'helm install my-odoo bitnami/odoo --version 21.2.9'
                }
            }
        } 


    }
}
