# testcab/futuopend

[![Docker image size](https://badgen.net/docker/size/testcab/futuopend)](https://hub.docker.com/r/testcab/futuopend)

An unofficial docker image packaging [FutuOpenD](https://www.futunn.com/download/OpenAPI).


## Supported tags and respective `Dockerfile` links

* [`7.0.3218`, `7.0`, `7`, `latest`](https://github.com/testcab/docker-futuopend/blob/main/Dockerfile)
* [`6.6.3108`, `6.6`, `6`](https://github.com/testcab/docker-futuopend/blob/6/Dockerfile)


## Usage

### Using default config file

```sh
alias FutuOpenD='docker run --rm -it -p 11111:11111 -v futu:/root/.com.futunn.FutuOpenD testcab/futuopend'

FutuOpenD -login_account=100000 -login_pwd=123456 -lang=en
```

### Using custom config file

```sh
alias FutuOpenD='docker run --rm -it -p 11111:11111 -v futu:/root/.com.futunn.FutuOpenD -v "$(PWD)"/FutuOpenD.xml:/opt/FutuOpenD/FutuOpenD.xml testcab/futuopend'

FutuOpenD
```
