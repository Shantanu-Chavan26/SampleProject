# Deployment of a .NET Console Application on AWS EC2 with Docker
This project demonstrates how to deploy a simple .NET console application on an AWS EC2 Ubuntu instance, using Docker for containerization. The guide walks through setting up the environment, installing necessary dependencies, creating a Docker image, and running the containerized application.

# Prerequisites
Before deploying the application, ensure you have the following:
1) An AWS account 
2) Access to an EC2 Ubuntu instance
3) Basic knowledge of SSH, Docker, and .NET
4) Installed Git for cloning the repository
5) Familiarity with Docker commands


# Procedure 
1) Install Dependencies
```` bash
sudo apt update && sudo apt upgrade -y
````
2) Install .NET SDK 8.0
-> Add Microsoft’s signing key and repository:
```bash
wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
```

-> Install SDK
``` bash
sudo apt update
sudo apt install dotnet-sdk-8.0 -y
```

3) Install Docker
``` bash
sudo apt install docker.io -y
sudo systemctl enable docker && sudo systemctl start docker
```

4) Cloning the Project
-> Clone this repo in your EC2 VM or your local desktop
``` bash
   git clone https://github.com/Shantanu-Chavan26/SampleProject.git
```

-> Navigate to the project directory 
``` bash
   cd SampleProject
```

5) Dockerize the Application
->DOCKERFILE: 
``` bash
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build  
WORKDIR /app  
COPY . .  
RUN dotnet restore  
RUN dotnet build --configuration Release --output out  
ENTRYPOINT ["dotnet", "out/your-dotnet-console-app.dll"]
```

-> Build and Run Docker Image
``` bash
docker build -t dotnet-console-app .
docker run --rm dotnet-console-app
```

6) Common Docker Commands
 ``` bash 
  List all containers:
     docker ps -a
```
  
 ``` bash 
 Stop a container:
    docker stop container-id
```
``` bash
 Remove a container:
   docker rm container-id
```
  

[MORE DOCKER DOCUMENTATION](https://docs.docker.com/)

[.NET INSTALLATION](https://learn.microsoft.com/en-us/dotnet/core/install/windows)

This project involves deploying a .NET 8.0 console application on an AWS EC2 (Ubuntu) instance using Docker. It covers setting up the EC2 instance, installing necessary tools like Git, Docker, and the .NET SDK, cloning the project from GitHub, and creating a Docker container to run the application.











