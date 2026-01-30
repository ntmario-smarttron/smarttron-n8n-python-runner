FROM n8nio/runners:latest

USER root

# Alte Datei löschen, falls im Base Image vorhanden
RUN rm -f /etc/n8n-task-runners.json

# Neue Datei kopieren
COPY n8n-task-runners.json /etc/n8n-task-runners.json

# Zum Debug: Inhalt anzeigen beim Build
RUN echo "=== RUNNER CONFIG ===" && cat /etc/n8n-task-runners.json

USER runner