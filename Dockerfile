FROM docker/whalesay:latest
FROM node:latest
LABEL Name=2048game Version=0.0.1

WORKDIR /app
COPY . .
CMD [ "node", "server.js" ]
