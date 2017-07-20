FROM latukha/ubuntu-dev-updated:latest
MAINTAINER Anton Latukha <anton.latukha+docker@gmail.com>
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y --no-install-recommends
        x11vnc \
        xvfb
#RUN apt-get autoclean
#RUN apt-get autoremove
#RUN rm -rf /var/lib/apt/lists/*
