FROM node:12.2.0-alpine

MAINTAINER Parvaze <parvaze.mdmasud@gmail.com>

WORKDIR /app

COPY . /app

RUN apk update && apk add bash

RUN npm install

RUN npm install express

EXPOSE 3000

CMD ["node","index.js"]
