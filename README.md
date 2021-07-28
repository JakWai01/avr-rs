# avr-rs
Ever wanted to run Rust on your Arduino Uno? Here you go! 

```
docker build --no-cache -t avr-rs:v1 .
```

```
docker run --device=/dev/ttyACM0 avr-rs:v1
```