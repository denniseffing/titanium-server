FROM debian:stable
LABEL maintainer="dennis.effing@hotmail.com"

VOLUME /otserv
WORKDIR /server
COPY ./bin/otserv /server

RUN apt-get update && \
    apt-get install -y libgmp3-dev libboost-thread-dev libboost-regex-dev libboost-system-dev libboost-filesystem-dev \
                       liblua5.1-dev libxml2-dev liblzma-dev zlib1g-dev libticonv-dev

RUN chmod +x /server/otserv
ENTRYPOINT ["/server/otserv"]
EXPOSE 7171