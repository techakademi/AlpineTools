FROM alpine:3.11.3
LABEL maintainer="Hamza GÜRCAN"
RUN apk update \
    && apk add whois \
    && rm -rf /var /cache/apk/*
ENTRYPOINT [ "whois" ]
CMD [ "--help" ]