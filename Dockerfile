FROM alpine:3.11.3

ARG VERSION_GIT="2.15.0-r1"
ARG VERSION_OPENSSH="7.5_p1-r8"

RUN apk --update add git=$VERSION_GIT openssh=$VERSION_OPENSSH && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

ENTRYPOINT ["git"]
CMD ["--help"]
