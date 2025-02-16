# SampleProject
Sample .NET console application deployment project

1) Required Installations
.NET SDK
Download and install the latest .NET SDK from Microsoft .NET.

2)  Clone the Repository to Your EC2 Instance
Start by connecting to your EC2 instance using SSH. Once connected, navigate to your GitHub repository and clone it onto the EC2 instance. After cloning, change to the project directory to prepare for further steps.

3) Install Required Packages on EC2
Ensure your EC2 instance is up to date by installing the latest package updates. Install Docker and Git to facilitate building and managing your application. Once installed, ensure that Docker is running and set to start automatically on boot for seamless operation.
EC2 instance specs:

# Virtual Instance Setup and Dockerization of C# Console Application

## 1. Virtual Instance Setup

I successfully created and configured an Ubuntu-based virtual instance on AWS for testing purposes. This environment was set up with all necessary dependencies to run .NET applications and Docker.

## 2. GitHub Repository Integration

I cloned the GitHub repository containing the C# console application (`Program.cs`) into the Ubuntu virtual machine. I ensured that the repository was correctly placed and accessible within the virtual environment.

## 3. Dockerfile Creation

I created a `Dockerfile` in the project directory to build a Docker image of the C# application. The `Dockerfile` includes the following instructions:

- Use the .NET SDK image to build the app.
- Restore dependencies using `dotnet restore`.
- Build the app using `dotnet build`.
- Run the application using `dotnet run`.

## 4. Docker Image Build

Using the `docker build` command, I successfully created a Docker image for the C# console application. Upon running the image, the expected output of the console application ("Hello, World!" and other lines) was displayed correctly in the terminal.

***Challenges Faced***
During this process, I encountered a few issues, which I have managed to resolve:

### Issue with .NET SDK Installation:
- Initially, the .NET SDK wasn't installed, but after running the following command, I successfully installed it:
  ```bash
  sudo apt install dotnet-sdk-8.0

