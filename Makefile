build:
	rustup toolchain install nightly-2021-01-07
	rustup override set nightly-2021-01-07
	rustup component add rust-src
	cargo build -Z build-std=core --target avr-atmega328p.json  --verbose

run: 
	rustup toolchain install nightly-2021-01-07
	rustup override set nightly-2021-01-07
	rustup component add rust-src
	cargo build -Z build-std=core --target avr-atmega328p.json  --verbose
	sh ./flash.sh target/avr-atmega328p/debug/avr-rs.elf
