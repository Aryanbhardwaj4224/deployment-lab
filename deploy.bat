@echo off
echo --- Starting Local Deployment Automation ---

REM  Build the Docker Image
echo 1. Building Docker Image...
docker build -t deployment-lab-app .

REM  Stop and remove any existing container
echo 2. Cleaning up old containers...
docker rm -f deployment-lab-app

REM  Run the new Container
echo 3. Deploying Container on port 3000...
docker run -d -p 3000:3000 --name deployment-lab-app deployment-lab-app

echo --- Deployment Success! ---
echo App is running at http://localhost:3000
pause