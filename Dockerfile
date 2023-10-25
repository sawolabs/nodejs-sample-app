FROM node:12.2.0-alpine

WORKDIR /app

COPY . /app

RUN apk update && apk add bash

RUN npm install

RUN npm install express

EXPOSE 3000

CMD ["node","index.js"]
