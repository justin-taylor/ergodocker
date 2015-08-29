# ergodocker

Builds container with avr-gcc to build the [TMK firmware](https://github.com/tmk/tmk_keyboard)

```
docker build -t avr_gcc .
docker run --rm -v $PWD/ergo_tmk:/home/builder avr_gcc
```
