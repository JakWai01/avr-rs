# avr-rs

## Overview

A repository to teach how to write code in Rust targeting the Arduino Uno by providing the necessary toolchain to flash the Arduino and some useful examples.

## Usage

Clone the repository to your local machine:
```
git clone https://github.com/JakWai01/avr-rs.git
```

Enter the repository folder:
```
cd avr-rs
```

Now you can basically start writing code for your Arduino inside the `main.rs`. Alternatively you can start by running the provided example in the `main.rs` file by executing
```
make clean
```
inside of the `avr-rs` folder.

### Common Errors

```
/dev/ttyACMO: no such file or directory
```
To solve this issue, please make sure your Arduino is plugged in correctly into your computer.

### Learning

To learn the basic concepts of writing code for the Arduino in Rust, you may want to follow the well-documented examples in the `examples` folder. To run the examples, just paste them into the main.rs and execute `make clean` again.

#### 1. Blink

The first example just requires the Arduino Uno itself. Plug it in and your ready to go. 
Copy the code of the `blink.rs` file into `main.rs` and run `make clean`. 

#### 2. LED 

The second example requires an Arduino Uno, 2 cables, an LED and a 220 Ohm resistor.
Assemble the components like displayed in the graphic below.

![led](/assets/led-resistor.png)

Again, plug in the Arduino, copy the code out of the `led.rs` file into `main.rs` and run `make clean`.

## Acknowledgements

The foundation of this repository is based on a [Blogpost](https://dev.to/creativcoder/how-to-run-rust-on-arduino-uno-40c0) by [@creativcoder](https://twitter.com/creativcoder). Check out his work on his [website](https://bio.link/creativcoder).

## Contributing

To contribute, please use the [GitHub flow](https://guides.github.com/introduction/flow/) and follow our [Code of Conduct](./CODE_OF_CONDUCT.md).

## License 

avr-rs (c) 2021 Jakob Waibel and contributors

SPDX-License-Identifier: AGPL-3.0