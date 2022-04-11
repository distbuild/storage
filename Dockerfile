FROM rust:latest AS builder
WORKDIR /usr/src/storage
COPY . .
RUN make install && \
    make build

FROM scratch
COPY --from=builder /usr/src/storage/target/release/storage /usr/local/bin/storage
ENTRYPOINT ["storage"]
