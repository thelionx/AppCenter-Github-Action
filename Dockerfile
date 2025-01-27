FROM node:20.5.0-alpine

WORKDIR /app
COPY . /app

RUN npm install -g appcenter-cli@2.14.0 \
    && apk update \
    && apk add git \
    && apk add bash

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT [ "/app/entrypoint.sh" ]

