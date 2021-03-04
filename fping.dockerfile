FROM alpine:3.11.3
LABEL maintainer="Hamza GÜRCAN"
RUN apk update \
    && apk add fping \
    && rm -rf /var /cache/apk/*
ENTRYPOINT [ "fping" ]
CMD [ "--help" ]