FROM node:6

MAINTAINER Leonardo Lobato<leonardolobato@gmail.com>

## Container setup
RUN npm install -g docsify-cli@latest
RUN mkdir -p /usr/local/docsify
RUN docsify init /usr/local/docsify

## Container runtime configuration
EXPOSE 3000
WORKDIR /usr/local/docsify

## Container entry point
ENTRYPOINT [ "docsify", "serve", "--port", "3000" ]

cmd [ "." ]
