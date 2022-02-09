FROM rust:latest AS builder
WORKDIR /usr/src/storage
COPY . .
RUN make install && \
    make build

FROM gcr.io/distroless/base-debian11
COPY --from=builder /usr/src/storage/target/release/storage /usr/local/bin/storage
USER nonroot:nonroot
ENTRYPOINT ["storage"]
