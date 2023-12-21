# EKS Cluster Deployment OdooCRM on AWS with Jenkins and Helm Charts

![image](https://github.com/isaacfkessler/devops-pipeline-to-eks/assets/93961922/2c0b5de2-941d-421e-b1a6-b8bba8467e2d)


## Objective

This project demonstrates how to deploy an EKS cluster on AWS using Jenkins. The cluster will be created using Terraform and Helm Charts will be used to deploy the Odoo CRM application.

Requirements

    An active AWS account
    An EC2 instance with Jenkins installed
    The Jenkins plugin for Terraform
    The Jenkins plugin for Helm Charts

Configuration

    Create a new project on GitHub.
    Create a directory called eks in the project.
    Clone the Terraform repository to the eks directory:

git clone https://github.com/terraform-aws-modules/eks-cluster.git

    Clone the Odoo CRM Helm Charts repository to the eks directory:

git clone https://github.com/odoo/odoo-helm-charts.git

Creating the Jenkins pipeline

    In Jenkins, create a new pipeline.
    Select the "Pipeline script from SCM" option.
    Enter the following code in the "Script" field:

pipeline {
  agent any
  stages {
    stage('Terraform init') {
      steps {
        sh 'terraform init'
      }
    }
    stage('Terraform fmt') {
      steps {
        sh 'terraform fmt'
      }
    }
    stage('Terraform plan') {
      steps {
        sh 'terraform plan'
      }
    }
    stage('Terraform apply') {
      steps {
        sh 'terraform apply'
      }
    }
    stage('Helm install') {
      steps {
        sh 'helm install odoo-crm odoo-helm-charts/odoo-crm'
      }
    }
  }
}

    Save the pipeline.

Executing the pipeline

    In Jenkins, click the "Build now" button to execute the pipeline.

The pipeline will execute the following steps:

    terraform init: initializes Terraform
    terraform fmt: formats the Terraform code
    terraform plan: generates a plan for deploying the cluster
    terraform apply: applies the deployment plan
    helm install odoo-crm: installs the Odoo CRM application

Verifying the deployment

After the pipeline completes, you can verify the deployment of the EKS cluster and the Odoo CRM application.

    To verify the EKS cluster, run the following command:

kubectl get nodes

    To verify the Odoo CRM application, run the following command:

kubectl get pods -n odoo-crm

The command should return a list of pods, including the pod for the Odoo CRM application.

Example

Here is an example of the output of the kubectl get pods -n odoo-crm command:

NAME                                 READY   STATUS    RESTARTS   AGE
odoo-crm-779859b94c-76h6t      1/1     Running   0          10s

This example shows that the pod for the Odoo CRM application is running.

Additional notes

    You can customize the pipeline to meet your specific needs. For example, you can add steps to configure the Odoo CRM application.
    You can also use the Jenkins Blue Ocean plugin to create a graphical user interface for managing the pipeline.

Troubleshooting

If you encounter any problems, you can check the Jenkins logs for more information. You can also consult the documentation for the Terraform and Helm Charts plugins.
