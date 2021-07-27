FROM ubuntu:20.10

RUN apt update 

RUN apt install git -y
RUN apt install build-essential -y
RUN git clone https://github.com/JakWai01/avr-rs.git
RUN cd avr-rs
RUN make run