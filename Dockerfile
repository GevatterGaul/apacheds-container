FROM alpine:3.17

RUN apk update && \
    apk add openjdk11-jre bash && \
    rm -rf /var/cache/apk/*
    
COPY ./apacheds /opt/apacheds
COPY config/config.ldif /opt/apacheds/config.ldif.default
COPY config/log4j.properties /opt/apacheds/log4j.properties.default
COPY bin/entrypoint.sh /entrypoint.sh

EXPOSE 389/tcp

CMD /entrypoint.sh