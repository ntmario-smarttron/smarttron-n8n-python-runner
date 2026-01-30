FROM n8nio/runners:latest

USER root

RUN echo "build $(date)" > /build-id.txt

RUN cd /opt/runners/task-runner-python && \
  uv pip install pillow piexif numpy

COPY n8n-task-runners.json /etc/n8n-task-runners.json

USER runner
