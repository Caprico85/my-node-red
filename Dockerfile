# FROM nodered/node-red:latest

# latest basiert aktuell (09.04.23) immernoch auf node.js 16. Die 20 ist nicht verfügbar, aber mit "latest-18" wenigstens etwas aktueller.
# Kann mit Release von Node-RED 4.0 wahrscheinlich wieder auf "latest" (https://github.com/node-red/node-red-docker/pull/402)
FROM nodered/node-red:latest-18

USER root

# Bluetooth-Gruppe hinzufügen
RUN addgroup bluetooth

# Pakete für Bluetooth hinzufügen
RUN apk add --no-cache eudev-dev

# Tools zur Bildbearbeitung installieren
RUN apk add --no-cache ghostscript imagemagick

USER node-red
