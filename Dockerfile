FROM alpine:3.11

ARG VERSION_GIT="2.24.1-r0"
ARG VERSION_OPENSSH="8.1_p1-r0"

RUN apk --update add git=$VERSION_GIT openssh=$VERSION_OPENSSH && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

ENTRYPOINT ["git"]
CMD ["--help"]
