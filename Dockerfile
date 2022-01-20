FROM node:16.9.0

COPY app/dist /app

RUN yarn global add http-server

WORKDIR /app
