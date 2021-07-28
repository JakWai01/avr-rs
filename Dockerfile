FROM rust:1.31

RUN apt update 

RUN apt-get install -y \
    build-essential \
    curl
RUN apt-get update -y && apt-get install -y wget gcc binutils gcc-avr avr-libc
RUN apt-get install avra avrdude -y
RUN apt install git -y
# RUN git clone https://github.com/JakWai01/avr-rs.git
COPY . avr-rs
CMD cd avr-rs; make run