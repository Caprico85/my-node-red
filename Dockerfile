FROM nodered/node-red:latest-12

USER root

RUN apk add --no-cache ghostscript imagemagick

USER node-red
