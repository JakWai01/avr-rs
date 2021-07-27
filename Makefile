build:
	rustup component add rust-src
	rustup override set nightly-2021-01-07
	cargo build -Z build-std=core --target avr-atmega328p.json  --verbose

run: 
	rustup component add rust-src
	rustup override set nightly-2021-01-07
	cargo build -Z build-std=core --target avr-atmega328p.json  --verbose
	sudo sh ./flash.sh target/avr-atmega328p/debug/avr-rs.elf