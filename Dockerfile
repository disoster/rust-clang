ARG VERSION=latest
FROM rust:$VERSION

RUN set -eux; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        libclang-dev
