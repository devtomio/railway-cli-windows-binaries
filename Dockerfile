FROM rustlang/rust:nightly

ARG CLI_VERSION
WORKDIR /usr/src/app
COPY . .

RUN bash files.sh
RUN cargo build --release

CMD ["./target/release/railway-cli-windows-binaries"]
