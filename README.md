# EKS Cluster Deployment OdooCRM on AWS with Jenkins and Helm Charts

![image](https://github.com/isaacfkessler/devops-pipeline-to-eks/assets/93961922/2c0b5de2-941d-421e-b1a6-b8bba8467e2d)
### ODOO CRM
![image](https://github.com/isaacfkessler/devops-pipeline-to-eks-odoocrm/assets/93961922/3ce6a4b0-f67a-4943-a9ba-0b6c1117da85)


This project demonstrates how to deploy an EKS cluster on AWS using Jenkins.

## Functionality

* Jenkins is used to automate the deployment process of an EKS cluster and an Odoo CRM application.
* Terraform is used to create the EKS cluster.
* Helm Charts is used to install the Odoo CRM application.

## Steps

1. Jenkins initializes Terraform.
2. Jenkins formats the Terraform code.
3. Jenkins generates a plan for deploying the cluster.
4. Jenkins applies the deployment plan.
5. Jenkins installs the Odoo CRM application.

## Results

After the deployment process completes, the EKS cluster is available and the Odoo CRM application is running.
