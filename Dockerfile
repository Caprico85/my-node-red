FROM nodered/node-red:latest-14

USER root

RUN apk add --no-cache ghostscript imagemagick

USER node-red
