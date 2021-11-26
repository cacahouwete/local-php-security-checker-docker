FROM alpine:latest

ARG BIN_URL

RUN wget -O /usr/bin/local-php-security-checker $BIN_URL \
 && chmod +x /usr/bin/local-php-security-checker

RUN mkdir /app
WORKDIR app

COPY ./entrypoint.sh /entrypoint
ENTRYPOINT ["/entrypoint"]
