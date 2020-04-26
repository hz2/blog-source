FROM node:13-alpine

LABEL version="1.0.0"

RUN apk add --no-cache git
RUN apk add --no-cache openssh

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]