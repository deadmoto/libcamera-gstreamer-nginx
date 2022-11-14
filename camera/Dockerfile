FROM balenalib/raspberry-pi-debian:bullseye-20221031

RUN apt-get update && \
    apt-get install libcamera-apps && \
    apt-get install gstreamer1.0-tools=1.18.4-2.1 && \
    apt-get install gstreamer1.0-alsa=1.18.4-2 && \
    apt-get install gstreamer1.0-plugins-base=1.18.4-2 && \
    apt-get install gstreamer1.0-plugins-good=1.18.4-2+deb11u1+rpt1 && \
    apt-get install gstreamer1.0-plugins-bad=1.18.4-3 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV UDEV=1

ADD cmd.sh /usr/local/bin/cmd.sh

CMD /bin/sh -e /usr/local/bin/cmd.sh
