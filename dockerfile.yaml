FROM n8nio/runners:latest

USER root

# Python Pakete installieren (für EXIF/GPS usw.)
RUN cd /opt/runners/task-runner-python && \
  uv pip install pillow piexif numpy

# Eigene Runner-Konfiguration kopieren
COPY n8n-task-runners.json /etc/n8n-task-runners.json

USER runner
