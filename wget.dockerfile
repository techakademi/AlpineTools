FROM alpine:3.11.3
LABEL maintainer="Hamza GÜRCAN"
RUN apk update \
    && apk add wget \
    && rm -rf /var /cache/apk/*
ENTRYPOINT [ "wget" ]
CMD [ "--help" ]