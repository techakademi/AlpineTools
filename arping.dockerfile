FROM alpine:3.11.3
LABEL maintainer="Hamza GÜRCAN"
RUN apk update \
    && apk add iputils \
    && rm -rf /var /cache/apk/*
ENTRYPOINT [ "/usr/sbin/arping" ]
CMD [ "--help" ]