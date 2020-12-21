FROM frolvlad/alpine-glibc

LABEL maintaner="Sleeyax"
LABEL description="Docker container to run PimpMyStremio"

ARG version=1.2.2

WORKDIR /app

RUN apk add --update --no-cache unzip wget libstdc++
RUN wget -O pms.zip https://github.com/sungshon/PimpMyStremio/releases/download/v${version}/PimpMyStremio-linux.zip
RUN unzip -j pms.zip
RUN chmod +x ./PimpMyStremio

VOLUME ["/root/.local/share/PimpMyStremio/"]
VOLUME ["/app/sideloaded"]

EXPOSE 7777

ENTRYPOINT ["/app/PimpMyStremio", "--sideload=", "/app/sideloaded", "--verbose"]