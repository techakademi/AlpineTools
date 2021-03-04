FROM alpine:3.11.3
LABEL maintainer="Hamza GÜRCAN"
RUN apk update \
    && apk add bind-tools \
    && rm -rf /var /cache/apk/*
ENTRYPOINT [ "/usr/bin/dig" ]
CMD [ "--help" ]