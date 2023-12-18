FROM node:18-slim


RUN apt-get update && \
    apt-get install -y yarn git

WORKDIR /app
COPY . /app

RUN ls -al
RUN yarn install
RUN yarn hardhat compile
