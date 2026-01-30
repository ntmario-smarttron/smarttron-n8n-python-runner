FROM n8nio/runners:latest

# Erzwingt Rebuild bei Änderungen
ARG CACHE_BUSTER=2

USER root

# Python-Abhängigkeiten installieren
RUN cd /opt/runners/task-runner-python && \
  uv pip install pillow piexif numpy

# Runner-Konfiguration kopieren
COPY n8n-task-runners.json /etc/n8n-task-runners.json

USER runner
