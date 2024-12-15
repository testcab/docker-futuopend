FROM ubuntu:24.04 AS download

ARG VERSION=8.5.4528

RUN apt-get update \
 && apt-get install -y wget \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /opt/FutuOpenD

RUN wget https://softwaredownload.futunn.com/Futu_OpenD_${VERSION}_Ubuntu16.04.tar.gz -O FutuOpenD.tar.gz \
 && tar --strip-components 2 --exclude '*.AppImage' -xvf FutuOpenD.tar.gz \
 && rm FutuOpenD.tar.gz


FROM ubuntu:24.04 AS futuopend

WORKDIR /opt/FutuOpenD
COPY --from=download /opt/FutuOpenD /opt/FutuOpenD

ENTRYPOINT [ "/opt/FutuOpenD/FutuOpenD", "-api_ip=0.0.0.0" ]
EXPOSE 11111
