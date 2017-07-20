FROM latukha/ubuntu-dev-updated:latest
MAINTAINER Anton Latukha <anton.latukha+docker@gmail.com>
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y --no-install-recommends \
        # for obvious reasons good supervisor needed (to start and handle Linux graphic stack, VNC and noVNC in Docker image)
        supervisor \
        # for downloading code
        curl \
        # for https://
        ca-certificates \
        # for creating virtual display
        xvfb \
        # for provision virtual display as VNC (to feed into noVNC client, noVNC is a browser VNC client in Javascript)
        x11vnc
ENV NOVNC_V=0.6.2 \
    WEBSOCKIFY_V=0.8.0
RUN curl -L https://codeload.github.com/novnc/noVNC/tar.gz/v"$NOVNC_V" | tar --transform 's,noVNC-'"$NOVNC_V"',noVNC,' --show-transformed -xz -C /opt/
RUN curl -L https://codeload.github.com/novnc/websockify/tar.gz/v"$WEBSOCKIFY_V" | tar --transform 's,websockify-'"$WEBSOCKIFY_V"',websockify,' --show-transformed -xz -C /opt/noVNC/utils/

COPY files/etc/supervisor/conf.d/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["/usr/bin/supervisord","-c","/etc/supervisor/conf.d/supervisord.conf"]
#RUN apt-get autoclean
#RUN apt-get autoremove
#RUN rm -rf /var/lib/apt/lists/*
