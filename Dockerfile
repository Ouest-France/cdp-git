FROM alpine:3.13.1

ARG VERSION_GIT="2.26.2-r0"
ARG VERSION_OPENSSH="8.3_p1-r0"

RUN apk --update add git=$VERSION_GIT openssh=$VERSION_OPENSSH && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

ENTRYPOINT ["git"]
CMD ["--help"]
