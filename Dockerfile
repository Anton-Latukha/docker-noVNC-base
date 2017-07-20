FROM latukha/ubuntu-dev-updated:latest
MAINTAINER Anton Latukha <anton.latukha+docker@gmail.com>
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y --no-install-recommends \
        curl \
        x11vnc \
        xvfb
ENV NOVNC_V=0.6.2
RUN curl -L https://codeload.github.com/novnc/noVNC/tar.gz/v"$NOVNC_V" | tar --transform 's,noVNC-'"$NOVNC_V"',noVNC,' --show-transformed -xz -C /opt/
#RUN apt-get autoclean
#RUN apt-get autoremove
#RUN rm -rf /var/lib/apt/lists/*
