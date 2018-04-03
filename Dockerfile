FROM node:8.9.1

MAINTAINER Kawin Glomjai

ARG app_env
ENV NODE_ENV $app_env
RUN mkdir -p /app/client
WORKDIR /app/client
RUN npm config set registry http://registry.npmjs.org/

COPY package*.json /app/client
RUN npm install

COPY . /app/client

EXPOSE 9000
