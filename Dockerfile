# FROM nodered/node-red:latest

FROM nodered/node-red:latest

USER root

# Bluetooth-Gruppe hinzufügen
RUN addgroup bluetooth

# Pakete für Bluetooth hinzufügen
RUN apk add --no-cache eudev-dev

# Tools zur Bildbearbeitung installieren
RUN apk add --no-cache ghostscript imagemagick

USER node-red
