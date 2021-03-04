FROM alpine:3.11.3
LABEL maintainer="Hamza GÜRCAN"
RUN apk update \
    && apk add apache2-utils \
    && rm -rf /var /cache/apk/*
ENTRYPOINT [ "/usr/bin/ab" ]
CMD [ "--help" ]