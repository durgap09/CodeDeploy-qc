#!/bin/bash

apt install awscli -y

aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 456325780689.dkr.ecr.us-east-2.amazonaws.com

docker pull 456325780689.dkr.ecr.us-east-2.amazonaws.com/qcloud-backend:latest

docker pull 456325780689.dkr.ecr.us-east-2.amazonaws.com/qcloud-postgres:latest

docker pull 456325780689.dkr.ecr.us-east-2.amazonaws.com/qcloud-pulumi:latest

docker pull 456325780689.dkr.ecr.us-east-2.amazonaws.com/qcloud-frontend:latest

docker volume rm qcloud-backend qcloud-db

docker network rm appmodz

docker volume create qcloud-db

docker volume create qcloud-backend

docker network create appmodz

