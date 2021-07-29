run:
	docker build -t avr-rs:v1 .
	docker run --device=/dev/ttyACM0 avr-rs:v1

build:
	docker build -t avr-rs:v1

clean: 
	docker build --no-cache -t avr-rs:v1 .
	docker run --device=/dev/ttyACM0 avr-rs:v1