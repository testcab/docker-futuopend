FROM ubuntu:22.04

ARG VERSION=6.6.3108

WORKDIR /opt/FutuOpenD

RUN apt-get update \
 && apt-get install -y wget \
 && wget https://softwarefile.futunn.com/FutuOpenD_${VERSION}_NN_Ubuntu16.04.tar.gz -O FutuOpenD.tar.gz \
 && tar --strip-components 2 --exclude '*.AppImage' -xvf FutuOpenD.tar.gz \
 && rm FutuOpenD.tar.gz \
 && apt-get remove -y --purge wget \
 && apt-get autoremove -y \
 && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "/opt/FutuOpenD/FutuOpenD", "-api_ip=0.0.0.0" ]
EXPOSE 11111
