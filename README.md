# Deploying-Jenkins-as-Container

Introduction
This document outlines the step-by-step process to deploy Jenkins, 
a popular continuous integration and delivery tool, as a container in Azure using Azure Container Instances (ACI). 
By deploying Jenkins as a container, we can take advantage of containerization benefits such as portability, scalability, and easy management.

Prerequisites
Before proceeding with the deployment, ensure the following prerequisites are met:

An active Azure subscription.
Access to Azure Portal with appropriate permissions.
Basic knowledge of Azure concepts, such as resource groups and virtual networks.
Docker installed on the local development machine.

Steps to Deploy Jenkins as a Container

Step 1: Create a Resource Group
  Log in to the Azure Portal.
  Navigate to the Azure portal's homepage and click on "Create a resource group."
  Provide a unique name for the resource group and select the desired region.
  Click on "Review + Create" and then "Create" to create the resource group.
  
Step 2: Deploy Azure Container Instances
  Go to the Azure Portal homepage and search for "Container Instances."
  Click on "Add" to create a new container instance.
  Provide the following details:
  Name: Choose a unique name for the container instance.
  Resource Group: Select the resource group created in Step 1.
  Region: Choose the desired region.
  Image Source: Select "Docker Hub" or specify a private registry.
  Image and Tag: Specify the Jenkins container image and tag (e.g., jenkins/jenkins:lts).
  CPU and Memory: Configure the desired CPU and memory resources.
  Networking: Select the appropriate network configuration.
  Advanced: Customize any additional settings as needed.
  Click on "Review + Create" and then "Create" to deploy the container instance.
  
Step 3: Access Jenkins Web Interface
  Once the container instance is deployed, go to the Azure Portal.
  Navigate to the container instance resource created in Step 2.
  Look for the public IP or DNS address assigned to the container instance.
  Open a web browser and enter the IP or DNS address followed by the Jenkins default port (usually 8080).
  Follow the on-screen instructions to set up Jenkins, including creating an admin user and installing plugins.

Conclusion
By following these steps, you can deploy Jenkins as a container in Azure using Azure Container Instances. This approach offers flexibility, scalability, and easy management of the Jenkins environment. Ensure to monitor the container instance and configure appropriate security measures to protect the Jenkins deployment.

Remember to update this Confluence page whenever there are changes to the deployment process or any additional considerations to keep in mind.

References
Azure Container Instances documentation
Jenkins documentation
