FROM node:20.9.0

WORKDIR /app
COPY . .
CMD [ "node", "server.js" ]
