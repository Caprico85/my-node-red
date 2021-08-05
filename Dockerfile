FROM nodered/node-red:latest-14

USER root

# Bluetooth-Gruppe hinzufügen
RUN addgroup bluetooth

# Tools zur Bildbearbeitung installieren
RUN apk add --no-cache ghostscript imagemagick

USER node-red
