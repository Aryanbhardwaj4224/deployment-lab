#!/bin/bash
APP_NAME="deployment-lab-app"
PORT="3000"

# Build image
docker build -t $APP_NAME .

# Run container
docker run -d -p $PORT:3000 --name $APP_NAME $APP_NAME