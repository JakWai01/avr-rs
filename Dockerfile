FROM rust:1.31

RUN apt update 

RUN apt-get install -y \
    build-essential \
    curl
RUN apt-get update -y && apt-get install -y wget gcc binutils gcc-avr avr-libc
RUN apt-get install avra avrdude -y
RUN apt install git -y
RUN rustup toolchain install nightly-2021-01-07
RUN rustup override set nightly-2021-01-07
RUN rustup component add rust-src
COPY . avr-rs
WORKDIR /avr-rs
RUN cargo build -Z build-std=core --target avr-atmega328p.json --verbose
CMD sh ./flash.sh target/avr-atmega328p/debug/avr-rs.elf