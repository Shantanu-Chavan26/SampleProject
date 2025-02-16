# Use the official .NET SDK 8.0 image to build the application
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build

# Set the working directory to /app
WORKDIR /app

# Copy the .csproj file and restore dependencies
COPY SimpleConsoleApp/*.csproj ./
RUN dotnet restore

# Copy the entire source code and publish the app
COPY SimpleConsoleApp/. ./
RUN dotnet publish -c Release -o /app/out

# Use the runtime image to run the app
FROM mcr.microsoft.com/dotnet/aspnet:8.0

WORKDIR /app

# Copy the built app from the previous stage
COPY --from=build /app/out ./

# Set the entry point to run the application
ENTRYPOINT ["dotnet", "SimpleConsoleApp.dll"]