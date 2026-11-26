# SPDX-License-Identifier: MIT
# Copyright (c) 2026 Closed Circuit Consulting

FROM docker.io/library/rust:1.100.0-slim-trixie AS builder
WORKDIR /app
COPY Cargo.toml Cargo.lock* ./
COPY src ./src
RUN RUSTFLAGS="-C target-feature=+crt-static" cargo build --release && \
    strip target/release/hello

FROM scratch
LABEL org.opencontainers.image.title="hello"
LABEL org.opencontainers.image.description="Hello world with ASCII art"
LABEL org.opencontainers.image.vendor="Closed Circuit Consulting"
LABEL org.opencontainers.image.authors="unitexe"
LABEL org.opencontainers.image.licenses="MIT"
LABEL org.opencontainers.image.source="https://git.closedcircuitconsulting.com/hello"
LABEL org.opencontainers.image.url="https://git.closedcircuitconsulting.com"
LABEL maintainer="unitexe"
LABEL artist="Jorn Barger, https://asciiart.website/art/5005"
COPY --from=builder /app/target/release/hello /usr/local/bin/hello
USER 65534:65534
CMD ["/usr/local/bin/hello"]
